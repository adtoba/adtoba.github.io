'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "426313f2f3133c2f20415344c4a22df3",
"favicon.ico": "4fd09f1672dfa56acd17e65df888c8be",
"index.html": "05469b1a295cfc8b866bf818bbc45a5e",
"/": "391d40434ad2e4b5f23a582373304773",
"firepit-log.txt": "675e2869b45a1d197346c014c2508d0e",
"main.dart.js": "274539d8472f609474c1e30aadb63ecf",
"README.md": "3e7913f92aeaddcb5cb344683c0044ea",
"public/index.html": "391d40434ad2e4b5f23a582373304773",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
".github/workflows/firebase-hosting-pull-request.yml": "5b2ac737d36c8df7c33b2e74417b69b8",
".github/workflows/firebase-hosting-merge.yml": "56a6410b77ae2d462336d04b1a9fc3fa",
"manifest.json": "a83bbbd9d23ea4d752fbcd44cdc544fa",
"firebase.json": "ceb3227e948a2fffb08892a8749cf74e",
".git/ORIG_HEAD": "7b9bf7ac869b4c7310505516b5c49c4a",
".git/config": "60e1fe032aefdd39fc331b02159febdf",
".git/objects/0d/44075a56c8557393d368f1a8549aa15ccc88dd": "8806bd5b705008e6f3b2536249911e7e",
".git/objects/50/91154ab4e935adf8bdbd7bc6653a5a0dc16485": "89878dac97b2878f81ac8f3a63dcf9c0",
".git/objects/9e/e512f82a5f935d9f59d3a19133f818ba072348": "b125deab68f344630e72de84bcbec3e4",
".git/objects/04/4cd5421fdb69ce1213b1a882414334d65e5f84": "26728903a1774dc61a31bc43dadc551b",
".git/objects/04/fe03c78ebb26b1519030dd3005707601f9a926": "c2b2af9afa387af6d0ea5d96ac407868",
".git/objects/56/c5f4858aea23fec9689872c03b8eccdc09d144": "9128330b439b40a4ab6c2d57b09e0661",
".git/objects/58/1bd5e3cb8b9a898ffca025fb610b150842f71e": "8859ffcaf394ce7301f154268cde3fd9",
".git/objects/93/fb369aff39f707e15c09542de480df00be53ee": "a89028270bd2d6a2b0bd6a57abfb460a",
".git/objects/9d/e3eb7f477c3c871285ed7d0324c3f0837ab7c5": "d35d2683f333a1974d4f9c53c9e4ffbf",
".git/objects/9d/f8ff17302b7318d5001b8649a60706d2111815": "6fb51f5fd574af69dab5da2c41921ee9",
".git/objects/9c/0c54b2d1b1a4d2cb4dede4b87e69a89eecce4f": "48821522d3b37c4e678c34fa5c1f29a1",
".git/objects/a4/a46254e0316c46e8efdb530fd040519e3e758c": "5fbe8930ac79f0a6f5ba95ef9624bd5b",
".git/objects/a3/87860319aa046b77f9cc334729b5693faa8b91": "bdbae5b08752860fb6071d9f263e34bd",
".git/objects/a3/8b982c49e2b10ed49312ca68d032a54d744e56": "469e31fde0b460a11d2410995f6ec496",
".git/objects/b2/5a4bd062887dc64af06b009d3829a71d6ecaa3": "796fca7160452af94d3c5a950596bd34",
".git/objects/d7/313e88d2c4828b30b242ee395612f41c67edcb": "8699d44b8bf59469a34cddffb39fa742",
".git/objects/d1/626e241a7bc150d3cee4de32f4ea7fa39a82bc": "db6735f44ca2ea830ec4275802e5db19",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e5/6e96c2993edf0f9bcd20b50769ece3d54b78b6": "e26c6ecdfaa997988b8b9aba0f09dd4e",
".git/objects/c0/47b51b4ad16789f274cd8d7ff97eae4d7a5583": "68ce803867505c6675eda2c0e3509cdc",
".git/objects/ee/1541e6f8a4438d3f3780287d17a2240aa140ec": "6ffb498779369dc0b429164183e08045",
".git/objects/ee/aaf1a328048dc7143016987a7532db95bd5c42": "eb239383e4ff8cabee9e13712e877f1a",
".git/objects/c9/8ce2c7e1d307baeaf4039c84e946eb2cb014b4": "43fa82e2392cbf4b12ad49d06d4163ef",
".git/objects/f2/0d19a733e1983c1db9346573c11480b7f8270a": "de4426b13b9b60a48b4b50eceff08f6e",
".git/objects/f2/5787c93ad00665f0f797a43ab397f0628a273e": "59e425d1456034072d902c75d18ec75f",
".git/objects/fe/98ca8bca0613c518ddab2ce47a020d10e7751b": "5a8f8dc899d5c09302754e3d662df027",
".git/objects/fe/fdd8250dfec84bf4c5a30f37cd19e6d18e194a": "d0fa596183c7ab6c6bb3ce7f00bbb9cf",
".git/objects/20/16c212330f7a22e0b2ff20220a549203317797": "964bd8d3a0b21ccade6d738100324d33",
".git/objects/20/005371f0d8e58e6d737c7a1a4056fef29248de": "adb98a6ad4a6af46482693675b8d193f",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/20/ce9c063f5e963b83dc121d6ab99557c0982a9e": "5e88b8c46c3cf1f84996295295e8bcb7",
".git/objects/20/96ca116244a30cdbe6df2f10edda30b2574f59": "2646ce5d76560c7a0ac7e8609f03f899",
".git/objects/73/c64a4adc3eda0d86673c6c6c3e3f7ddd50bd6b": "c493ba881b628471054cd6a1fb80ff5e",
".git/objects/80/2ac2bd545bf4baf3633cdfadd0424020e28cf9": "e459255afb19717dcf6a12563cfb9b3b",
".git/objects/74/da427baf3894d44c0bda8bc7d0a6edac53bf33": "ab258c99ebf5e1f4510af2503c56a55c",
".git/objects/8f/32257824c8e9f87521802bb005e50c04098211": "e5fea1eba367caa3ce3adffd6da9969f",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/10/fa06678ac67f8b90dd64519431a435460d5316": "c33f99ecfb3bfc02416c0a82b9148087",
".git/objects/19/cf71a4094ea85544655549d3e6ccb9e67bd36e": "d6339796b27a31bc389817ec7db2ace4",
".git/objects/4c/5db7107a978df9f2b140340246e3b2c56ac137": "8817fe038185feac989356636115fdff",
".git/objects/2f/ede68225560d46a526f50668d9aa1b2067f498": "6fc0741990c89aafd2e6efc5d1a7b1a7",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/9f/8ce5e34699e01db145ea2f3074753b22e97733": "f18244357489645c4f342a1588aec36d",
".git/objects/38/00bb1400fb9863417eda1a2c1dd49d069fe106": "a715b15449f4b3fafc6b9168462189a7",
".git/objects/5c/55a8081b948bf4512cac77f8f4ab137a7b2819": "715570ad60848f5a8273e6b2a7a180cf",
".git/objects/98/2b5fd635994cc7bfdb4b2840314e03d3a5d427": "869b4bb358603adee9a1883d8c936c86",
".git/objects/3f/e1b5782b028c27f898b43412672d96a5e9b826": "062f9aabf3ef6565d86155bd366439e1",
".git/objects/37/b5ad7cb03870fde8c6f3a8af85dc1f1bdb2cf8": "66819180d636e5200e9cb3eea8727e8e",
".git/objects/01/ae95e753941487e115cc52dfd202c688345782": "3b9a79087906442e7fa1908956830470",
".git/objects/97/356a40d933f1d1e3e4894c9d6adf2f809284c8": "88123c96672f0fbaed4b989d2d1a4d86",
".git/objects/63/ddecf394e97385afe34e1fdf4bb2481183e70a": "9db95d3c38ad2beeb4fc3c6a23887f58",
".git/objects/90/97cb426fc59d085a15997cf1d3566d9d410835": "e80b1d5ef38777f7d43a94fc8d28e8ce",
".git/objects/a7/450b35a338d0390181fcee6df7b6f516c544e9": "3c6ce8e2b50b21111cf51e25d8a696a0",
".git/objects/b6/3bb0ac6ff3073a205e2e18196f22b119d21f55": "dc41c99b18122cb6383062eb620d32b8",
".git/objects/aa/0bbd81a73308e198c83c7dfdca77b29fb79b1a": "03be337ac4df8d90b705995485d8bd97",
".git/objects/af/86bb3c232e3d59d032d3044d969641d1ab130c": "7bc03fc299cc64f332048ffcb8629c4f",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/d4264d3cdd4ed2e670d10a97a3c428e4e9e2ec": "e5c4dae26800da232d1c03c33e9f3c54",
".git/objects/db/b58ffbfa3c0d813911938b50b946c8eac0c9e4": "b51b7dc588315ca3de6735899fdb79f3",
".git/objects/a8/3a17d54b6dc2156c855c6580301cefc9c8d017": "6525101be8d70b808a809af9c83fa4ad",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/e6/9de29bb2d1d6434b8b29ae775ad8c2e48c5391": "c70c34cbeefd40e7c0149b7a0c2c64c2",
".git/objects/f0/d192b351a003d42221f5021d7189d9210b334b": "87c93e064cf7a920221b898520905377",
".git/objects/fa/477d68b217cf04ede7cf92c1e47f69345bfa47": "76de32a5888bc848237f683af9d2a80b",
".git/objects/ce/7d0a6e7c6a506f500117c230303ccaab07080e": "ca2bfb7aa24dc55d7cfb2c695b344f5c",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/41/0ca316aabce20c65e4e9b9feb78e2f207ddfc4": "d1091a067c82a904f2791ce606c22f5f",
".git/objects/83/b9d1c780e0dba062ee1709757a0d67439192e3": "7b405ca7b41f2b0fe352d500e91e834f",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/23/b1a5400e916716b182af767dabfd1e205a5dc7": "03bbc1c34d8d4219dda19464ac2f12c8",
".git/objects/8c/79fbb76374cd126796cf1dbbd805a720843de8": "0e2374cc374a99b8efd08d9f649ce024",
".git/objects/8c/bef46cffc77c0397b90da5d7918c6c41772faf": "45afd2c90aac828a721ebe679309d829",
".git/objects/85/451f141b067f0d0dbbe6cffc02f0f6cb56567a": "c00cf6e67d38e89c70505a2aa69a7a62",
".git/objects/2b/a5d3355a658fcfc6f221ea2e0581dafd9e140c": "875420eb4c20af32e050ca6b9aa670bc",
".git/objects/2b/8a7743b09e85fec894ff23d8b0df1583599f90": "11b15393555c520e1f781cbd1833520e",
".git/objects/47/b3c5f76a8af32f6072498923bb5ba2a2f9267d": "c4c40dcd14fca7478c5bd15c4e14c568",
".git/objects/7f/e9302eb72df6123704e2b4c31649b355c71746": "0ddfc0ad94be0bb4565c922dfd1b1d32",
".git/objects/8e/1c14f8b8982d7779099b39eae3e3a10f371500": "ffa0de9a438632cb5a832ca225f3f865",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/info/exclude": "0aebccfd5866bfc3e7c8f625230c22f7",
".git/logs/HEAD": "18648e2038d421045c765d085f4d7a6b",
".git/logs/refs/heads/master": "18648e2038d421045c765d085f4d7a6b",
".git/logs/refs/remotes/origin/master": "849af57090b19040fbd55f989eb05369",
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
".git/refs/heads/master": "f62038933c9c6150bba9c1b2bc2d5eae",
".git/refs/remotes/origin/master": "f62038933c9c6150bba9c1b2bc2d5eae",
".git/index": "f3a3fd7852b412f1ec7b1e476025e380",
".git/COMMIT_EDITMSG": "4bb0f72c222b789950a703619b89960c",
".git/FETCH_HEAD": "7d0b2d23799c1e623a61d4787552b52f",
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
