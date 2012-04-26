.class public Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;
.super Landroid/app/Service;
.source "CustomizedSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$1;,
        Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;,
        Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;
    }
.end annotation


# static fields
.field private static URI_STRING:Ljava/lang/String;

.field private static sSecureValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "content://com.sonyericsson.provider.customization/settings/com.android.settings"

    sput-object v0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->URI_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 136
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSystemValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSystemValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->URI_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSecureValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSecureValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->setValuesIntoSystem(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private static castArrayToArrayOfContentValues(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    return-object p0
.end method

.method static combineSettings([Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "settingsArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v6, usedNames:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 402
    aget-object v7, p0, v0

    invoke-static {v7}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->castArrayToArrayOfContentValues(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 403
    .local v3, settings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    .line 404
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_1

    .line 405
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 406
    .local v5, thisSetting:Landroid/content/ContentValues;
    const-string v7, "name"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, thisName:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 408
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 409
    invoke-virtual {v6, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 401
    .end local v1           #j:I
    .end local v4           #thisName:Ljava/lang/String;
    .end local v5           #thisSetting:Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 414
    .end local v3           #settings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    return-object v2
.end method

.method public static getSettingsToRead(ILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .parameter "resource"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 95
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, settingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 104
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-string v4, "setting"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {v1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, thisSetting:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 112
    .end local v3           #thisSetting:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v4, "CustomizedSettings"

    const-string v5, "Parser Exception reading what values can be customized at Customized Settings"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 124
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-object v2

    .line 121
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v4, "CustomizedSettings"

    const-string v5, "IOException reading what values that can be customized at Customized Settings"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method public static parseSettingsFromXml(Ljava/util/ArrayList;ILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "resource"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, settingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 302
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .line 304
    .local v2, thisName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 308
    .local v4, thisValue:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 313
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const-string v6, "setting"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    const/4 v6, 0x0

    const-string v7, "key"

    invoke-interface {v1, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    if-eqz v2, :cond_0

    .line 318
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 321
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v3, thisSetting:Landroid/content/ContentValues;
    const-string v6, "name"

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v6, "value"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 329
    .end local v3           #thisSetting:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v6, "CustomizedSettings"

    const-string v7, "Parser Exception reading Default Settings"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 341
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-object v5

    .line 338
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 333
    :catch_1
    move-exception v0

    .line 334
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v6, "CustomizedSettings"

    const-string v7, "IOException reading Default Settings"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6
.end method

.method public static parseSettingsWithUri(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 15
    .parameter
    .parameter "uriAddres"
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    .local p0, settingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 261
    .local v14, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v10, 0x0

    .line 262
    .local v10, thisName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 264
    .local v12, thisValue:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 265
    new-instance v14, Ljava/util/ArrayList;

    .end local v14           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .restart local v14       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 267
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 269
    .local v7, mCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 270
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 272
    .local v8, nameIndex:I
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 273
    .local v13, valueIndex:I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 274
    .local v9, nbrOfItems:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v9, :cond_1

    .line 275
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 277
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 280
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v11, thisSetting:Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v11, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "value"

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v11           #thisSetting:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 274
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 287
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 290
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #i:I
    .end local v7           #mCursor:Landroid/database/Cursor;
    .end local v8           #nameIndex:I
    .end local v9           #nbrOfItems:I
    .end local v13           #valueIndex:I
    :cond_2
    return-object v14
.end method

.method public static setCustomInputArrays(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, systemValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p1, secureValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sput-object p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSystemValues:Ljava/util/ArrayList;

    .line 391
    sput-object p1, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sSecureValues:Ljava/util/ArrayList;

    .line 392
    return-void
.end method

.method private setValuesIntoSystem(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z
    .locals 7
    .parameter
    .parameter "provider"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;",
            "Landroid/content/ContentResolver;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, defaultValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 350
    .local v1, nElements:I
    const/4 v3, 0x0

    .line 351
    .local v3, valueIsSet:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 352
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 354
    .local v2, thisSetting:Landroid/content/ContentValues;
    sget-object v5, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$1;->$SwitchMap$com$sonyericsson$customizedsettings$CustomizedSettingsService$Setting_Provider:[I

    invoke-virtual {p2}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 375
    :goto_1
    if-nez v3, :cond_0

    move v4, v3

    .line 379
    .end local v2           #thisSetting:Landroid/content/ContentValues;
    .end local v3           #valueIsSet:Z
    .local v4, valueIsSet:Z
    :goto_2
    return v4

    .line 356
    .end local v4           #valueIsSet:Z
    .restart local v2       #thisSetting:Landroid/content/ContentValues;
    .restart local v3       #valueIsSet:Z
    :pswitch_0
    const-string v5, "name"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 366
    goto :goto_1

    .line 368
    :pswitch_1
    const-string v5, "name"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #thisSetting:Landroid/content/ContentValues;
    :cond_1
    move v4, v3

    .line 379
    .end local v3           #valueIsSet:Z
    .restart local v4       #valueIsSet:Z
    goto :goto_2

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sonyericsson.customizedsettings.service.BOOTUP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v1, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;-><init>(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;)V

    .line 82
    .local v1, readTask:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    .end local v1           #readTask:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;
    :cond_0
    const/4 v2, 0x2

    return v2
.end method
