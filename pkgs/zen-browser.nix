{ inputs, system, ... }:
inputs.zen-browser.packages.${system}.default.override {
  config.zen.policies = {
    DisableAppUpdate = true;
    DisableTelemetry = true;
    AutofillAddressEnabled = false;
    AutofillCreditCardEnabled = false;
    DisableFeedbackCommands = true;
    DisableFirefoxStudies = true;
    DisablePocket = true;
    DontCheckDefaultBrowser = true;
    NoDefaultBookmarks = true;
    OfferToSaveLogins = false;
    EnableTrackingProtection = {
      Value = true;
      Locked = true;
      Cryptomining = true;
      Fingerprinting = true;
    };
    DisableFirefoxAccounts = true;
  };
}
