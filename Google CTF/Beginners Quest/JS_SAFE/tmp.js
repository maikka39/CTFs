async function x(password) {
  // TODO: check if they can just use Google to get the password once they understand how this works.

  var code =
    'icffjcifkciilckfmckincmfockkpcofqcoircqfscoktcsfucsivcufwcooxcwfycwiAcyfBcwkCcBfDcBiEcDfFcwoGcFfHcFiIcHfJcFkKcJfLcJiMcLfNcwwOcNNPcOOQcPORcQNScRkTcSiUcONVcUoWcOwXcWkYcVkЀcYiЁcЀfЂcQoЃcЂkЄcЃfЅcPNІcЅwЇcІoЈcЇiЉcЈfЊcPkЋcЊiЌcІiЍcЌfЎcWoЏcЎkАcЏiБcІkВcБfГcNkДcГfЕcЇkЖcЕiЗcЖfИcRwЙcИoКcЙkЛcUkМcЛiНcМfОcИkПcОiРcПfСcUwТcСiУcQkФcУiХcЃiЦcQwЧcЦoШcЧkЩcШiЪcЩfЫcRiЬcЫfЭcКiЮcЭfЯcСoаcЯiбcГiвcЙiгcRoдcгkеcдiжdТaзcЛfиdзaжcжийcСkкdйaжcжклcйfмdлaжcжмнdТaжcжноdЀaжcжопdNaжcжпрcUiсcрfтdсaуdЁaтcтутcтофcТfхdфaтcтхтcтктcтнтcтмцdсaтcтцтcтктcтутcтнчaaтшdЯaщcйiъcщfыdъaьcжыэcVfюdэaьcьюьcьояdЛaьcьяьcьуьcьыѐчшьёѐшшђcOfѓdђaѓcѓнѓcѓнєcUfѕdєaѓcѓѕіcЯfїdіaѓcѓїјaёѓљaaтњcжшћcЎiќcћfѝdќaњcњѝњcњeўcЏfџdўaњcњџѠdАaњcњѠњcњшњcњѝњcњfњcњџѡљшњѢaaтѣcжшѣcѣѝѣcѣeѣcѣџѤcЯkѥdѤaѣcѣѥѣcѣшѣcѣѝѣcѣfѣcѣџѦѢшѣѧcцнѧcѧїѨdСaѧcѧѨѧcѧкѧcѧуѩaёѧѪcхмѫdрaѪcѪѫѪcѪкѬdYaѪcѪѬѪcѪиѭaѩѪѮcяюѯdНaѮcѮѯѮcѮиѮcѮхѮcѮкѰaѭѮѱdVaѲcхѱѲcѲѕѳcNoѴcѳkѵcѴfѶdѵaѲcѲѶѲcѲiѲcѲlѲcѲmѷјѲgѸјѭѷѹbѰѸѺcXfѻdѺaѻcѻюѻcѻоѻcѻкѻcѻoѼdђaѻcѻѼѻcѻнѻcѻнѻcѻѕѻcѻїѽaёѻѾѽѹшѿceeҀceeҁcee҂ceeѿaѾeҀјѿT҂ѡҀшҁјh҂hѦҁшѿaѾfҀјѿV҂ѡҀшҁјh҂hѦҁшѿaѾiҀјѿU҂ѡҀшҁјh҂hѦҁшѿaѾjҀјѿX҂ѡҀшҁјh҂hѦҁшѿaѾkҀјѿЁ҂ѡҀшҁјh҂hѦҁшѿaѾlҀјѿF҂ѡҀшҁјh҂hѦҁшѿaѾmҀјѿЄ҂ѡҀшҁјh҂hѦҁшѿaѾnҀјѿЉ҂ѡҀшҁјh҂hѦҁшѿaѾoҀјѿЄ҂ѡҀшҁјh҂hѦҁшѿaѾpҀјѿЋ҂ѡҀшҁјh҂hѦҁшѿaѾqҀјѿЍ҂ѡҀшҁјh҂hѦҁшѿaѾrҀјѿА҂ѡҀшҁјh҂hѦҁшѿaѾsҀјѿF҂ѡҀшҁјh҂hѦҁшѿaѾtҀјѿВ҂ѡҀшҁјh҂hѦҁшѿaѾuҀјѿД҂ѡҀшҁјh҂hѦҁшѿaѾvҀјѿЗ҂ѡҀшҁјh҂hѦҁшѿaѾwҀјѿК҂ѡҀшҁјh҂hѦҁшѿaѾxҀјѿН҂ѡҀшҁјh҂hѦҁшѿaѾyҀјѿР҂ѡҀшҁјh҂hѦҁшѿaѾAҀјѿТ҂ѡҀшҁјh҂hѦҁшѿaѾBҀјѿФ҂ѡҀшҁјh҂hѦҁшѿaѾCҀјѿW҂ѡҀшҁјh҂hѦҁшѿaѾDҀјѿХ҂ѡҀшҁјh҂hѦҁшѿaѾEҀјѿЪ҂ѡҀшҁјh҂hѦҁшѿaѾFҀјѿЬ҂ѡҀшҁјh҂hѦҁшѿaѾGҀјѿЮ҂ѡҀшҁјh҂hѦҁшѿaѾHҀјѿа҂ѡҀшҁјh҂hѦҁшѿaѾIҀјѿe҂ѡҀшҁјh҂hѦҁшѿaѾJҀјѿб҂ѡҀшҁјh҂hѦҁшѿaѾKҀјѿв҂ѡҀшҁјh҂hѦҁшѿaѾLҀјѿK҂ѡҀшҁјh҂hѦҁшѿaѾMҀјѿе҂ѡҀшҁјh҂hѦҁшѐceeёceeѓceeјceeљceeњceeѡceeѢceeѣceeѦceeѧceeѩceeѪceeѭceeѮceeѰceeѲceeѷceeѸceeѹceeѻceeѽceeѾceeҀceeҁceeжceeтceeчceeьcee'

  var env = {
    a: (x, y) => x[y],
    b: (x, y) => Function.constructor.apply.apply(x, y),
    c: (x, y) => x + y,
    d: (x) => String.fromCharCode(x),
    e: 0,
    f: 1,
    g: new TextEncoder().encode(password),
    h: 0,
  };

  var outarr = []

  for (var i = 0; i < code.length; i += 4) {
    var [lhs, fn, arg1, arg2] = code.substr(i, 4);

    console.log("------------------------------------", i, fn, arg1, arg2, env[arg1], env[arg2], env.h);
    console.log(Object.assign({}, env));
    if (fn == "ѡ") {
      outarr.push(env[arg1][1]);
    }

    try {
      env[lhs] = env[fn](env[arg1], env[arg2]);
    } catch (e) {
      env[lhs] = new env[fn](env[arg1], env[arg2]);
    }

    if (env[lhs] instanceof Promise) {
      env[lhs] = await env[lhs];
    }

  }
  console.log(outarr);
  // setTimeout(function() {
  // }, 3000);
  return !env.h;
}


const alg = {
  name: 'AES-CBC',
  iv: Uint8Array.from([211, 42, 178, 197, 55, 212, 108, 85, 255, 21, 132, 210, 209, 137, 37, 24])
};

const secret = Uint8Array.from([
  26, 151, 171, 117, 143, 168, 228, 24, 197, 212, 192, 15, 242, 175, 113, 59, 102, 57, 120, 172, 50, 64, 201, 73, 39, 92, 100, 64, 172, 223, 46, 189, 65, 120, 223, 15, 34, 96, 132, 7, 53, 63, 227, 157, 15, 37, 126, 106
]);

async function open_safe() {
  // Disable the input
  // keyhole.disabled = true;
  keyhole.disabled = false;

  // Get the value of the input
  value = keyhole.value;
  // var value = "CTF{" + keyhole.value + "}"

  // Check if the password has these 0-9a-zA-Z_@!?- characters in it
  password = /^CTF{([0-9a-zA-Z_@!?-]+)}$/.exec(value);

  console.log(!!password, password[0]);
  console.log("sending", password[1]);

  if (!password || !(await x(password[1]))) {
    return document.body.className = 'denied';
  }

  document.body.className = 'granted';

  let pwHash = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(password[1]));
  let key = await crypto.subtle.importKey('raw', pwHash, alg, false, ['decrypt']);

  content.value = new TextDecoder("utf-8").decode(await crypto.subtle.decrypt(alg, key, secret))
}
