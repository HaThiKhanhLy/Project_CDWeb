import emailjs from 'emailjs-com';

const sendEmail = async (email) => {
    try {
        const templateParams = {
            to_email: email,
            // Các tham số khác cần thiết cho bản mẫu email của bạn
        };

        const response = await emailjs.send(
            'service_2elt81z',
            'template_hqi1z71',
            templateParams,
            'abTWnnSG9C8LlW3-A'
        );

        console.log('Email sent successfully:', response);
        window.alert('Email sent successfully');
    } catch (error) {
        console.error('Error sending email:', error);
        window.alert('Error sending email');
    }
};
