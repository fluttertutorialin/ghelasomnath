# ghelasomnath

This application used to firebase (image upload, Live Event) and flutter moduar.

ARGUMENT PASS

Router(contactUsRoute, child: (context, args) => ContactUsPage(title: args.data), transition: TransitionType.rotate)

Modular.to.pushNamed(contactUsRoute, arguments: contactUsRoute);

Navigator.pushNamed(context, contactUsRoute, arguments: titleContactUs);


TODO MAIN MODULE ARGUMENT PASS

Router('/other/:text', child: (_, args) => OtherPage(text: args.params['text'])), \n
Modular.to.pushNamed("/other/${homeController.text}");

