.class public Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;
.super Landroid/os/AsyncTask;
.source "WifiAPConfigAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final PRODUCT_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "ro.semc.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->PRODUCT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private configureWiFiApSsid(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/16 v8, 0x20

    const/4 v6, 0x0

    .line 70
    const/high16 v5, 0x7f03

    invoke-static {v5, p1}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->parseDefaultSettings(ILandroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 73
    .local v3, defaultsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.sonyericsson.provider.customization/settings/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 74
    .local v4, uri:Landroid/net/Uri;
    invoke-static {v4, p1}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->parseCustomizedSettings(Landroid/net/Uri;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 77
    .local v1, customizationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v3, v1}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->mergeCustomizationWithDefault(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 79
    const-string v5, "default_wifi_ap_ssid"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    .local v2, defaultSsid:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    :cond_0
    sget-object v2, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->PRODUCT_NAME:Ljava/lang/String;

    .line 88
    :cond_1
    const-string v5, "default_wifi_ap_ssid_suffix"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, "default_wifi_ap_ssid_suffix"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    .line 91
    .local v0, addSuffix:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->getImeiSuffix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_3

    .line 97
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 101
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->setWifiApConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    return-void

    .end local v0           #addSuffix:Z
    :cond_4
    move v0, v6

    .line 88
    goto :goto_0
.end method

.method private createCompleteDefaultApConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .parameter "defaultSsid"

    .prologue
    const/4 v4, 0x0

    .line 212
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 213
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 214
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 215
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 216
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, randomUUID:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x8

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    const/16 v4, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 219
    return-object v0
.end method

.method private getImeiSuffix(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 223
    const-string v0, ""

    .line 224
    .local v0, imeiSuffix:Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 227
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0, v0}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->getMd5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    return-object v0
.end method

.method private getMd5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    .line 240
    const-string v4, ""

    .line 243
    .local v4, md5String:Ljava/lang/String;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 244
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 245
    .local v2, md5Digest:[B
    new-instance v3, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 246
    .local v3, md5Number:Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 251
    .end local v1           #md:Ljava/security/MessageDigest;
    .end local v2           #md5Digest:[B
    .end local v3           #md5Number:Ljava/math/BigInteger;
    :goto_0
    return-object v4

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v5, "WifiAPConfigAsyncTask"

    const-string v6, "NoSuchAlgorithmException while creating suffix"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static mergeCustomizationWithDefault(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, defaultsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, customizationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object p0
.end method

.method public static parseCustomizedSettings(Landroid/net/Uri;Landroid/content/Context;)Ljava/util/Map;
    .locals 11
    .parameter "uri"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v5, returnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 151
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, contentResolver:Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 155
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 156
    const/4 v8, 0x0

    invoke-interface {v4, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    .line 159
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const-string v8, "setting"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 161
    const/4 v8, 0x0

    const-string v9, "key"

    invoke-interface {v4, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, thisSetting:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 163
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, thisValue:Ljava/lang/String;
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 169
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v6           #thisSetting:Ljava/lang/String;
    .end local v7           #thisValue:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 170
    .local v2, e1:Ljava/io/FileNotFoundException;
    const-string v8, "WifiAPConfigAsyncTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No customization found for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v2           #e1:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    return-object v5

    .line 172
    :catch_1
    move-exception v1

    .line 173
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "WifiAPConfigAsyncTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was bad "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 176
    .local v1, e:Ljava/io/IOException;
    const-string v8, "WifiAPConfigAsyncTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Io error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static parseDefaultSettings(ILandroid/content/Context;)Ljava/util/Map;
    .locals 7
    .parameter "resource"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 112
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v2, returnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 116
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-string v5, "setting"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    const/4 v5, 0x0

    const-string v6, "key"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, thisSetting:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 120
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, thisValue:Ljava/lang/String;
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 126
    .end local v3           #thisSetting:Ljava/lang/String;
    .end local v4           #thisValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v5, "WifiAPConfigAsyncTask"

    const-string v6, "Parser Exception reading what values can be customized at Customized Settings"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 138
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-object v2

    .line 135
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "WifiAPConfigAsyncTask"

    const-string v6, "IOException reading what values that can be customized at Customized Settings"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v5
.end method

.method private setWifiApConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "defaultSsid"

    .prologue
    .line 197
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 199
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 201
    .local v0, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 202
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 206
    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 207
    const-string v2, "WifiAPConfigAsyncTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default AP SSID set to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-void

    .line 204
    .restart local v0       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->createCompleteDefaultApConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->configureWiFiApSsid(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
