'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "426313f2f3133c2f20415344c4a22df3",
"favicon.ico": "4fd09f1672dfa56acd17e65df888c8be",
"index.html": "4c43fbb95ed12a31ee9e2b98c659030d",
"/": "4c43fbb95ed12a31ee9e2b98c659030d",
"main.dart.js": "8d693d90fe6d3ea7df19b302ae7713e3",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "a83bbbd9d23ea4d752fbcd44cdc544fa",
".git/config": "60e1fe032aefdd39fc331b02159febdf",
".git/objects/0d/44075a56c8557393d368f1a8549aa15ccc88dd": "8806bd5b705008e6f3b2536249911e7e",
".git/objects/04/fe03c78ebb26b1519030dd3005707601f9a926": "c2b2af9afa387af6d0ea5d96ac407868",
".git/objects/9d/e3eb7f477c3c871285ed7d0324c3f0837ab7c5": "d35d2683f333a1974d4f9c53c9e4ffbf",
".git/objects/9c/0c54b2d1b1a4d2cb4dede4b87e69a89eecce4f": "48821522d3b37c4e678c34fa5c1f29a1",
".git/objects/a4/a46254e0316c46e8efdb530fd040519e3e758c": "5fbe8930ac79f0a6f5ba95ef9624bd5b",
".git/objects/a3/87860319aa046b77f9cc334729b5693faa8b91": "bdbae5b08752860fb6071d9f263e34bd",
".git/objects/a3/8b982c49e2b10ed49312ca68d032a54d744e56": "469e31fde0b460a11d2410995f6ec496",
".git/objects/b2/5a4bd062887dc64af06b009d3829a71d6ecaa3": "796fca7160452af94d3c5a950596bd34",
".git/objects/d7/313e88d2c4828b30b242ee395612f41c67edcb": "8699d44b8bf59469a34cddffb39fa742",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/f2/0d19a733e1983c1db9346573c11480b7f8270a": "de4426b13b9b60a48b4b50eceff08f6e",
".git/objects/f2/5787c93ad00665f0f797a43ab397f0628a273e": "59e425d1456034072d902c75d18ec75f",
".git/objects/fe/fdd8250dfec84bf4c5a30f37cd19e6d18e194a": "d0fa596183c7ab6c6bb3ce7f00bbb9cf",
".git/objects/20/16c212330f7a22e0b2ff20220a549203317797": "964bd8d3a0b21ccade6d738100324d33",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/80/2ac2bd545bf4baf3633cdfadd0424020e28cf9": "e459255afb19717dcf6a12563cfb9b3b",
".git/objects/74/da427baf3894d44c0bda8bc7d0a6edac53bf33": "ab258c99ebf5e1f4510af2503c56a55c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/19/cf71a4094ea85544655549d3e6ccb9e67bd36e": "d6339796b27a31bc389817ec7db2ace4",
".git/objects/2f/ede68225560d46a526f50668d9aa1b2067f498": "6fc0741990c89aafd2e6efc5d1a7b1a7",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/9f/8ce5e34699e01db145ea2f3074753b22e97733": "f18244357489645c4f342a1588aec36d",
".git/objects/5c/55a8081b948bf4512cac77f8f4ab137a7b2819": "715570ad60848f5a8273e6b2a7a180cf",
".git/objects/98/2b5fd635994cc7bfdb4b2840314e03d3a5d427": "869b4bb358603adee9a1883d8c936c86",
".git/objects/3f/e1b5782b028c27f898b43412672d96a5e9b826": "062f9aabf3ef6565d86155bd366439e1",
".git/objects/97/356a40d933f1d1e3e4894c9d6adf2f809284c8": "88123c96672f0fbaed4b989d2d1a4d86",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/d4264d3cdd4ed2e670d10a97a3c428e4e9e2ec": "e5c4dae26800da232d1c03c33e9f3c54",
".git/objects/a8/3a17d54b6dc2156c855c6580301cefc9c8d017": "6525101be8d70b808a809af9c83fa4ad",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/f0/d192b351a003d42221f5021d7189d9210b334b": "87c93e064cf7a920221b898520905377",
".git/objects/ce/7d0a6e7c6a506f500117c230303ccaab07080e": "ca2bfb7aa24dc55d7cfb2c695b344f5c",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/41/0ca316aabce20c65e4e9b9feb78e2f207ddfc4": "d1091a067c82a904f2791ce606c22f5f",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/23/b1a5400e916716b182af767dabfd1e205a5dc7": "03bbc1c34d8d4219dda19464ac2f12c8",
".git/objects/85/451f141b067f0d0dbbe6cffc02f0f6cb56567a": "c00cf6e67d38e89c70505a2aa69a7a62",
".git/objects/2b/a5d3355a658fcfc6f221ea2e0581dafd9e140c": "875420eb4c20af32e050ca6b9aa670bc",
".git/objects/47/b3c5f76a8af32f6072498923bb5ba2a2f9267d": "c4c40dcd14fca7478c5bd15c4e14c568",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/info/exclude": "0aebccfd5866bfc3e7c8f625230c22f7",
".git/logs/HEAD": "64dd4f5c083f777072c99d4871981ff5",
".git/logs/refs/heads/master": "64dd4f5c083f777072c99d4871981ff5",
".git/logs/refs/remotes/origin/master": "e087bd089cc9fca72cf01e5138157aa1",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "01b1688f97f94776baae85d77b06048b",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/refs/heads/master": "13251d3670251f1162be4b236e4ad3c6",
".git/refs/remotes/origin/master": "13251d3670251f1162be4b236e4ad3c6",
".git/index": "9e2def2c5d01334b96f97dedd0c3fed9",
".git/COMMIT_EDITMSG": "9e7103cbfbdd84bd089fcbbf27e25950",
"assets/AssetManifest.json": "bbeefb02d86e73fbe0151857c9d5e17a",
"assets/NOTICES": "e1ac26dcb8e4f6019c5650c5fdc58dcd",
"assets/FontManifest.json": "a1195cd12b5f04f56cd8deacfc3e13a3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/images/me.JPG": "b941c64486dcb54310d026a3ba5d9d04",
"assets/assets/images/google-play.svg": "fcbd4f6c7a776e6c438a6e95371b23fe",
"assets/assets/images/google-play.png": "5a4c1943c2d3a77d79d5938bc5505ad0",
"assets/assets/images/github-logo.png": "538399ee01a786e3e45e3023892a5dec",
"assets/assets/icons/github.svg": "c368c64692538b029b1b57118b5211ea",
"assets/assets/icons/whatsapp.svg": "98baf8558dd979a04c78aa10b3b57cb2",
"assets/assets/icons/twitter.svg": "4967893b04ddae8e56bb7bd43b2c65db",
"assets/assets/fonts/Calibri%2520Light.ttf": "0d717c4bf80cbb556bf87777fef7d09e",
"assets/assets/fonts/coolvetica%2520rg.ttf": "b60ffa5ac0a8e99a0e8e765ded1cccf4",
"assets/assets/fonts/Calibri%2520Regular.ttf": "5d7c31b284ddb01fc1cbae0edc9ec210",
"assets/assets/fonts/Calibri%2520Bold.ttf": "8c8905b9e5a727f74debd5a1519544fd"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
