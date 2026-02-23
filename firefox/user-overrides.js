// user-overrides.js — John's arkenfox overrides

// === KEEP VIDEO CALLS WORKING ===
user_pref("media.peerconnection.enabled", true); // WebRTC for video calls

// === HOMEPAGE / NEW TAB ===
// arkenfox blanks these out by default
user_pref("browser.startup.page", 1); // 1 = restore previous session
user_pref("browser.startup.homepage", "about:home");
user_pref("browser.newtabpage.enabled", true);



// === CLEAN HOMEPAGE ===
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false); // kill Pocket
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false); // kill shortcuts
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);

// === SEARCH ===
// DuckDuckGo set manually in Firefox settings, but disable search suggestions
user_pref("browser.search.suggest.enabled", false);

// === DNS OVER HTTPS ===
user_pref("network.trr.mode", 2); // DoH first, fallback to regular DNS
user_pref("network.trr.uri", "https://dns.quad9.net/dns-query");

// === QUALITY OF LIFE ===
// arkenfox disables session restore — re-enable it
user_pref("browser.sessionstore.resume_from_crash", true);
user_pref("privacy.clearOnShutdown.history", false); // keep history between sessions
user_pref("privacy.clearOnShutdown.cookies", false); // stay logged in
user_pref("privacy.clearOnShutdown.sessions", false);
