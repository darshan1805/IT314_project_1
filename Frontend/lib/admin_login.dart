import 'package:flutter/material.dart';

class AdminLogin extends StatelessWidget {
  const AdminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Container(
            width: size.width,
            color: const Color.fromARGB(255, 46, 106, 238),
            child: Column(
              children: const [
                UserButton(),
                SizedBox(
                  height: 25,
                ),
                WelcomeText(),
                SizedBox(
                  height: 25,
                ),
                AdminLoginForm()
              ],
            ),
          );
        } else {
          return const DesktopBody();
        }
      }),
    );
  }
}

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Container(
          // height: 0.9 * size.height,
          width: 0.8 * size.width,
          decoration: BoxDecoration(
            // color: Colors.amber,
            borderRadius: BorderRadius.circular(50),
            // boxShadow: const [
            //   BoxShadow(
            //       offset: Offset(0, 10),
            //       blurRadius: 50,
            //       color: Color.fromARGB(255, 242, 239, 239)),
            // ],
          ),
          child: Center(
            child: Column(
              children: [
                // const DesktopButton(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 0.8 * size.height,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color.fromARGB(255, 242, 239, 239)),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 0.8 * size.height,
                        width: 0.4 * size.width,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://th.bing.com/th/id/OIG.d2HpjcWDgHWsnZ4ZjlLe?pid=ImgGn',
                            scale: 0.3,
                          ),
                        ),
                      ),
                      Container(
                        height: 0.8 * size.height,
                        width: 0.4 * size.width,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 106, 238),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.only(
                              left: 0.08 * size.width,
                              right: 0.08 * size.width,
                              top: 0.08 * size.width),
                          child: Column(
                            children: const [
                              Text(
                                "Welcome back to Nicher",
                                textScaleFactor: 2,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              SizedBox(height: 20),
                              AdminLoginForm(),
                              DesktopButton(),
                            ],
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DesktopButton extends StatelessWidget {
  const DesktopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.only(top:5),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 46, 106, 238),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 1,
                color: const Color.fromARGB(255, 46, 106, 238),
              )),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/employee_login");
            },
            child: Column(
              children: const [
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 40,
                ),
                Text(
                  "Employee",
                  textScaleFactor: 0.8,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 46, 106, 238),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 1,
                color: const Color.fromARGB(255, 46, 106, 238),
              )),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/manager_login");
            },
            child: Column(
              children: const [
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 40,
                ),
                Text(
                  "Manager",
                  textScaleFactor: 0.8,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.only(top:5),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 1,
                color: const Color.fromARGB(255, 46, 106, 238),
              )),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/admin_login");
            },
            child: Column(
              children: const [
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 40,
                ),
                Text(
                  "Admin",
                  textScaleFactor: 0.8,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class AdminLoginForm extends StatefulWidget {
  const AdminLoginForm({
    super.key,
  });

  @override
  State<AdminLoginForm> createState() => _AdminLoginFormState();
}

class _AdminLoginFormState extends State<AdminLoginForm> {
  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(children: [
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
              hintText: "Username",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              fillColor: Colors.white,
              filled: true),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          obscureText: passwordVisible,
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.lock_outlined,
                color: Colors.black,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                    passwordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(
                    () {
                      passwordVisible = !passwordVisible;
                    },
                  );
                },
              ),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              fillColor: Colors.white,
              filled: true),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 400,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 3, color: Colors.white)),
            child: const Center(
              child: Text(
                "login",
                textScaleFactor: 1.1,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Welcome back to nicher",
      textScaleFactor: 1.2,
      style: TextStyle(
          color: Color.fromARGB(255, 221, 221, 221),
          fontWeight: FontWeight.bold),
    );
  }
}

class UserButton extends StatelessWidget {
  const UserButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 50),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Center(
        child: SizedBox(
          width: 0.8 * size.width,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/employee_login");
                },
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 46, 106, 238),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  width: 0.4 * size.width,
                  child: const Center(
                    child: Text(
                      "Employee",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/manager_login");
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 27, bottom: 27, right: 15, left: 15),
                  width: 0.4 * size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: const Color.fromARGB(255, 46, 106, 238),
                    ),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Manager",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
