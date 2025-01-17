public class ConsumerRecord {
    public static void sendEmailNotification(List<consumer__c> con) {
        for(consumer__c c : con) {
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(new List<String>{c.email__c});
            email.setSubject('Welcome to our company');
            email.setPlainTextBody('Dear ' + c.consumerName + ',\n\n' +
                'Welcome to MY RICE! You are recognized as an important customer to us. ' +
                'Please continue your journey with us as we strive to provide you with high-quality resources.\n\n' +
                'Best regards,\n' +
                'The MY RICE Team\n\n' +
                'We are proud to partner with customers like you, and we look forward to offering exciting discounts and products.\n\n' +
                'Thank you for buying with us. Here are some of the products that are commonly bought by our customers like you.\n\n');
            Messaging.sendEmail(new List<Messaging.SingleEmailMessage>{email});
        }
    }
}
