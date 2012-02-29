.class public Lmiui/app/resourcebrowser/OnlineHelper;
.super Ljava/lang/Object;
.source "OnlineHelper.java"

# interfaces
.implements Lmiui/app/resourcebrowser/IntentConstants;


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final CONNECTION_TIMEOUT:I = 0x4e20

.field public static final MIN_VERSION:I = 0x1

.field private static final READ_TIMEOUT:I = 0x4e20

.field private static mCacheFileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/resourcebrowser/OnlineHelper;->mCacheFileNameMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static appendVersionInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "url"

    .prologue
    .line 157
    :try_start_0
    invoke-static {p0}, Lmiui/app/resourcebrowser/OnlineHelper;->getMIUIAccountToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, token:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%s&g=%s&v=%s&b=%s&d=%s&i=%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Lmiui/app/resourcebrowser/OnlineHelper;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lmiui/app/resourcebrowser/OnlineHelper;->getModVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {}, Lmiui/app/resourcebrowser/OnlineHelper;->getBoardString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {}, Lmiui/app/resourcebrowser/OnlineHelper;->getDeviceString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {}, Lmiui/app/resourcebrowser/OnlineHelper;->getShortIMEI()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    .end local v1           #token:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 159
    .restart local v1       #token:Ljava/lang/String;
    :cond_0
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v1           #token:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move-object v2, p1

    .line 162
    goto :goto_1
.end method

.method public static buildCategories(Lorg/json/JSONObject;Landroid/os/Bundle;)Ljava/util/List;
    .locals 9
    .parameter "json"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/ResourceCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, categories:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/ResourceCategory;>;"
    const/4 v7, 0x0

    .line 249
    .local v7, jsonOrder:Lorg/json/JSONArray;
    :try_start_0
    const-string v8, "order"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 255
    :goto_0
    :try_start_1
    const-string v8, "data"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 256
    .local v6, jsonCategories:Lorg/json/JSONObject;
    if-nez v7, :cond_2

    .line 258
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 259
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 260
    new-instance v1, Lmiui/app/resourcebrowser/ResourceCategory;

    invoke-direct {v1}, Lmiui/app/resourcebrowser/ResourceCategory;-><init>()V

    .line 261
    .local v1, category:Lmiui/app/resourcebrowser/ResourceCategory;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, code:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceCategory;->setCode(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lmiui/app/resourcebrowser/ResourceCategory;->setName(Ljava/lang/String;)V

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 276
    .end local v1           #category:Lmiui/app/resourcebrowser/ResourceCategory;
    .end local v2           #code:Ljava/lang/String;
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6           #jsonCategories:Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 277
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 279
    .end local v3           #e:Lorg/json/JSONException;
    :cond_0
    :goto_2
    return-object v0

    .line 266
    .restart local v5       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6       #jsonCategories:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_2

    .line 268
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 269
    new-instance v1, Lmiui/app/resourcebrowser/ResourceCategory;

    invoke-direct {v1}, Lmiui/app/resourcebrowser/ResourceCategory;-><init>()V

    .line 270
    .restart local v1       #category:Lmiui/app/resourcebrowser/ResourceCategory;
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2       #code:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceCategory;->setCode(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lmiui/app/resourcebrowser/ResourceCategory;->setName(Ljava/lang/String;)V

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 250
    .end local v1           #category:Lmiui/app/resourcebrowser/ResourceCategory;
    .end local v2           #code:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #jsonCategories:Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static buildResources(Lorg/json/JSONObject;Landroid/os/Bundle;)Ljava/util/List;
    .locals 10
    .parameter "json"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v6, resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    const-string v7, "data"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 339
    .local v4, jsonResources:Lorg/json/JSONArray;
    const-string v7, "fileHost"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, fileHost:Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 344
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 345
    .local v3, jsonResource:Lorg/json/JSONObject;
    new-instance v5, Lmiui/app/resourcebrowser/Resource;

    invoke-direct {v5}, Lmiui/app/resourcebrowser/Resource;-><init>()V

    .line 346
    .local v5, resource:Lmiui/app/resourcebrowser/Resource;
    invoke-static {}, Lmiui/app/resourcebrowser/OnlineJsonParser;->getDefault()Lmiui/app/resourcebrowser/OnlineJsonParser;

    move-result-object v7

    invoke-virtual {v7, v3, v0, p1}, Lmiui/app/resourcebrowser/OnlineJsonParser;->buildResourceInformation(Lorg/json/JSONObject;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 348
    .local v2, information:Landroid/os/Bundle;
    invoke-virtual {v5, v2}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 349
    invoke-static {v5, p1}, Lmiui/app/resourcebrowser/ResourceHelper;->getResourceStatus(Lmiui/app/resourcebrowser/Resource;Landroid/os/Bundle;)I

    move-result v7

    invoke-virtual {v5, v7}, Lmiui/app/resourcebrowser/Resource;->setStatus(I)V

    .line 350
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v2           #information:Landroid/os/Bundle;
    .end local v3           #jsonResource:Lorg/json/JSONObject;
    .end local v5           #resource:Lmiui/app/resourcebrowser/Resource;
    :cond_1
    return-object v6
.end method

.method public static buildSpecifiedResources(Lorg/json/JSONObject;Landroid/os/Bundle;)Ljava/util/Map;
    .locals 11
    .parameter "json"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v7, resources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lmiui/app/resourcebrowser/Resource;>;"
    const-string v8, "data"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 303
    .local v4, jsonResources:Lorg/json/JSONObject;
    const-string v8, "fileHost"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, fileHost:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 305
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 309
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 310
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 311
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 312
    .local v3, jsonResource:Lorg/json/JSONObject;
    new-instance v6, Lmiui/app/resourcebrowser/Resource;

    invoke-direct {v6}, Lmiui/app/resourcebrowser/Resource;-><init>()V

    .line 313
    .local v6, resource:Lmiui/app/resourcebrowser/Resource;
    invoke-static {}, Lmiui/app/resourcebrowser/OnlineJsonParser;->getDefault()Lmiui/app/resourcebrowser/OnlineJsonParser;

    move-result-object v8

    invoke-virtual {v8, v3, v0, p1}, Lmiui/app/resourcebrowser/OnlineJsonParser;->buildResourceInformation(Lorg/json/JSONObject;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 315
    .local v1, information:Landroid/os/Bundle;
    invoke-virtual {v6, v1}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 316
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    .end local v1           #information:Landroid/os/Bundle;
    .end local v3           #jsonResource:Lorg/json/JSONObject;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #resource:Lmiui/app/resourcebrowser/Resource;
    :cond_1
    return-object v7
.end method

.method private static getBoardString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "ro.product.board"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getEncryptedURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    .line 67
    move-object v5, p0

    .line 70
    .local v5, resultUrl:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, encodedUrl:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "05wZlFTY"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string v6, "MD5"

    invoke-static {v6}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v1

    .line 75
    .local v1, digest:Landroid/security/MessageDigest;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/security/MessageDigest;->update([B)V

    .line 76
    new-instance v0, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 77
    .local v0, bigInt:Ljava/math/BigInteger;
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, md5:Ljava/lang/String;
    const-string v6, "%32s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    const/16 v8, 0x30

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 80
    const-string v6, "http://res.api.miui.com/api?%s&key=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 84
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v1           #digest:Landroid/security/MessageDigest;
    .end local v3           #encodedUrl:Ljava/lang/String;
    .end local v4           #md5:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 81
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 82
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFilePathByResource(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 13
    .parameter "directory"
    .parameter "info"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 371
    const-string v5, "m_title"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, title:Ljava/lang/String;
    const-string/jumbo v5, "x_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, id:Ljava/lang/String;
    const/4 v4, 0x1

    .line 375
    .local v4, version:I
    :try_start_0
    const-string/jumbo v5, "version"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 379
    :goto_0
    const-string v5, "online_path"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, url:Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, extension:Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 382
    const-string v5, "ResourceBrowser"

    const-string v6, "invalid url (%s) for %s (%s)"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v2, v7, v10

    aput-object v1, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v0, "mtz"

    .line 385
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1ff

    invoke-static {v5, v6, v8, v8}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 386
    const-string v5, "%s%s_(%s.%d).%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    aput-object v1, v6, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    const/4 v7, 0x4

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 376
    .end local v0           #extension:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "directory"
    .parameter "url"

    .prologue
    const/4 v4, -0x1

    .line 356
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1ff

    invoke-static {v2, v3, v4, v4}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 357
    sget-object v2, Lmiui/app/resourcebrowser/OnlineHelper;->mCacheFileNameMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    .local v0, cacheFileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, pieces:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 361
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_0

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_0
    sget-object v2, Lmiui/app/resourcebrowser/OnlineHelper;->mCacheFileNameMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v1           #pieces:[Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const-string v1, ""

    .line 208
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static getJSONInformation(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 128
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, line:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public static getJSONInformation(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 112
    .local v3, result:Lorg/json/JSONObject;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lmiui/app/resourcebrowser/OnlineHelper;->getURLInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x400

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 113
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v5, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, line:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 119
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #result:Lorg/json/JSONObject;
    .local v4, result:Lorg/json/JSONObject;
    move-object v3, v4

    .line 123
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #result:Lorg/json/JSONObject;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .restart local v3       #result:Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 120
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 121
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getListURL(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .parameter "start"
    .parameter "length"
    .parameter "categoryCode"
    .parameter "keyword"
    .parameter "metaData"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/16 p1, 0x1e

    .line 91
    :cond_0
    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_URL"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "com.miui.android.resourcebrowser.PLATFORM_VERSION_START"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "com.miui.android.resourcebrowser.PLATFORM_VERSION_END"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "com.miui.android.resourcebrowser.FORMAT_VERSION_START"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "com.miui.android.resourcebrowser.FORMAT_VERSION_END"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, url:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 103
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&keyword="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_2
    invoke-static {v1}, Lmiui/app/resourcebrowser/OnlineHelper;->getEncryptedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    return-object v1

    .line 100
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getMIUIAccountToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 212
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 213
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v5, "com.miui.auth"

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 215
    .local v1, accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 216
    .local v3, token:Ljava/lang/String;
    array-length v5, v1

    if-lez v5, :cond_0

    .line 218
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v1, v5

    const-string/jumbo v6, "token"

    invoke-virtual {v0, v5, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, userData:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 220
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 226
    .end local v4           #userData:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 222
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 223
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getModVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    const-string v1, "ro.modversion"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, modVer:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "Unknown"

    .line 176
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private static getShortIMEI()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 188
    const/16 v0, 0x9

    .line 190
    .local v0, LENGTH:I
    invoke-static {}, Lmiui/app/resourcebrowser/OnlineHelper;->getIMEI()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, shortImei:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 194
    .local v1, length:I
    if-lt v1, v4, :cond_0

    .line 195
    sub-int v3, v1, v4

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 199
    .end local v1           #length:I
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static getURLInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x4e20

    .line 59
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 60
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 61
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 63
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readCategories(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .parameter "filePath"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/ResourceCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, categories:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/ResourceCategory;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-static {v2}, Lmiui/app/resourcebrowser/OnlineHelper;->getJSONInformation(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lmiui/app/resourcebrowser/OnlineHelper;->buildCategories(Lorg/json/JSONObject;Landroid/os/Bundle;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 237
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 238
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 239
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static readResources(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .parameter "filePath"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    const/4 v2, 0x0

    .line 323
    .local v2, resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    invoke-static {v1}, Lmiui/app/resourcebrowser/OnlineHelper;->getJSONInformation(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lmiui/app/resourcebrowser/OnlineHelper;->buildResources(Lorg/json/JSONObject;Landroid/os/Bundle;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 333
    :cond_0
    :goto_0
    return-object v2

    .line 328
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 329
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 330
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 331
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static readSpecifiedResources(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .parameter "filePath"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    const/4 v2, 0x0

    .line 284
    .local v2, resources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lmiui/app/resourcebrowser/Resource;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    invoke-static {v1}, Lmiui/app/resourcebrowser/OnlineHelper;->getJSONInformation(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lmiui/app/resourcebrowser/OnlineHelper;->buildSpecifiedResources(Lorg/json/JSONObject;Landroid/os/Bundle;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 294
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 295
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #resources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lmiui/app/resourcebrowser/Resource;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 297
    .restart local v2       #resources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lmiui/app/resourcebrowser/Resource;>;"
    :cond_1
    return-object v2

    .line 289
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 290
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 291
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 292
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static sendUserAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 5
    .parameter "baseUrl"
    .parameter "bundle"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 138
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "x_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "m_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lmiui/app/resourcebrowser/OnlineHelper;->appendVersionInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/app/resourcebrowser/OnlineHelper;->getEncryptedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, url:Ljava/lang/String;
    new-instance v1, Lmiui/app/resourcebrowser/OnlineHelper$1;

    invoke-direct {v1, v0}, Lmiui/app/resourcebrowser/OnlineHelper$1;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/OnlineHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method
