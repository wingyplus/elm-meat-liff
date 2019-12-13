((Elm, liff, VConsole) => {
    new VConsole()
    liff
        .init({
            liffId: "xxx",
        })
        .then(() => liff.getProfile())
        .then((profile) => Elm.Main.init({
            node: document.querySelector("#app"),
            flags: {
                displayName: profile.displayName,
            }
        }))
})(Elm, liff, VConsole)
