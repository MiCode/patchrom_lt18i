.class public Landroid/app/RuntimeThemeInfo;
.super Ljava/lang/Object;
.source "RuntimeThemeInfo.java"


# static fields
.field private static final RUNTIME_THEME_TAG:Ljava/lang/String; = "semcruntimetheme"

.field private static final SEMC_APPLICATION_BACKGROUND:I = 0x2010000

.field private static final SEMC_APPLICATION_BACKGROUND_INDEX:I = 0x0

.field private static final SEMC_PREVIEW:I = 0x2010001

.field private static final SEMC_PREVIEW_INDEX:I = 0x1

.field private static final SEMC_RUNTIME_THEME:[I = null

.field private static final SEMC_RUNTIME_THEME_SIZE:I = 0x2

.field static final TAG:Ljava/lang/String; = "RuntimeThemeInfo"


# instance fields
.field private mApplicationBackgroundRes:I

.field private mPreviewResource:I

.field private mService:Landroid/content/pm/ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroid/app/RuntimeThemeInfo;->SEMC_RUNTIME_THEME:[I

    .line 60
    sget-object v0, Landroid/app/RuntimeThemeInfo;->SEMC_RUNTIME_THEME:[I

    const/4 v1, 0x0

    const/high16 v2, 0x201

    aput v2, v0, v1

    .line 61
    sget-object v0, Landroid/app/RuntimeThemeInfo;->SEMC_RUNTIME_THEME:[I

    const/4 v1, 0x1

    const v2, 0x2010001

    aput v2, v0, v1

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .locals 10
    .parameter "context"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 95
    :cond_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "context and service must not be null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 98
    :cond_1
    iput-object p2, p0, Landroid/app/RuntimeThemeInfo;->mService:Landroid/content/pm/ServiceInfo;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 102
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 104
    .local v3, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v7, "com.sonyericsson.service.theme"

    invoke-virtual {p2, v4, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 105
    if-nez v3, :cond_3

    .line 106
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "No com.sonyericsson.service.theme meta-data"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 127
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create context for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v7

    .line 110
    :cond_3
    :try_start_2
    iget-object v7, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 112
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 116
    .local v0, attrs:Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, type:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 119
    :cond_5
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, nodeName:Ljava/lang/String;
    const-string v7, "semcruntimetheme"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 121
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "Meta-data does not start with semcruntimetheme tag"

    invoke-direct {v7, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    :cond_6
    invoke-virtual {p0, v5, v0}, Landroid/app/RuntimeThemeInfo;->readMetaDataAttributes(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 130
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 132
    :cond_7
    return-void
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Landroid/app/RuntimeThemeInfo;->mService:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/RuntimeThemeInfo;->mService:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/RuntimeThemeInfo;->mService:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResources(Landroid/content/pm/PackageManager;)Landroid/content/res/Resources;
    .locals 3
    .parameter "pm"

    .prologue
    .line 245
    iget-object v2, p0, Landroid/app/RuntimeThemeInfo;->mService:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 254
    :goto_0
    return-object v2

    .line 247
    :cond_0
    const/4 v1, 0x0

    .line 249
    .local v1, resources:Landroid/content/res/Resources;
    :try_start_0
    iget-object v2, p0, Landroid/app/RuntimeThemeInfo;->mService:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 254
    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 251
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public loadApplicationBackground(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"

    .prologue
    .line 198
    iget v0, p0, Landroid/app/RuntimeThemeInfo;->mApplicationBackgroundRes:I

    invoke-virtual {p0, v0, p1}, Landroid/app/RuntimeThemeInfo;->loadDrawable(ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected loadDrawable(ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "res"
    .parameter "pm"

    .prologue
    const/4 v2, 0x0

    .line 207
    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/app/RuntimeThemeInfo;->mService:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 232
    :goto_0
    return-object v1

    .line 231
    :cond_1
    invoke-virtual {p0, p2}, Landroid/app/RuntimeThemeInfo;->getResources(Landroid/content/pm/PackageManager;)Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public loadPreview(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"

    .prologue
    .line 188
    iget v0, p0, Landroid/app/RuntimeThemeInfo;->mPreviewResource:I

    invoke-virtual {p0, v0, p1}, Landroid/app/RuntimeThemeInfo;->loadDrawable(ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadTitle(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pm"

    .prologue
    .line 178
    iget-object v0, p0, Landroid/app/RuntimeThemeInfo;->mService:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected readMetaDataAttributes(Landroid/content/res/Resources;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "res"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 143
    sget-object v1, Landroid/app/RuntimeThemeInfo;->SEMC_RUNTIME_THEME:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 145
    .local v0, sa:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/RuntimeThemeInfo;->mPreviewResource:I

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/RuntimeThemeInfo;->mApplicationBackgroundRes:I

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    return-void
.end method
