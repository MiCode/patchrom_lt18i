.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResources$MIUITheme;
    }
.end annotation


# static fields
.field private static sThemeResourcesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/content/res/ThemeResources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sThemeResourcesMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 24
    const-string v0, "android"

    invoke-direct {p0, v0}, Landroid/content/res/MiuiResources;->getThemeResources(Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 0
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Landroid/content/res/MiuiResources;I)Lmiui/content/res/ThemeResources;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/res/MiuiResources;Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/content/res/MiuiResources;->replaceTypedArray(Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private getThemeResources(I)Lmiui/content/res/ThemeResources;
    .locals 2
    .parameter "id"

    .prologue
    .line 156
    if-eqz p1, :cond_1

    .line 158
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, packageName:Ljava/lang/String;
    const-string v1, "miui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v0, "android"

    .line 162
    :cond_0
    invoke-direct {p0, v0}, Landroid/content/res/MiuiResources;->getThemeResources(Ljava/lang/String;)Lmiui/content/res/ThemeResources;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 166
    .end local v0           #packageName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v1

    .line 166
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getThemeResources(Ljava/lang/String;)Lmiui/content/res/ThemeResources;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 170
    sget-object v0, Landroid/content/res/MiuiResources;->sThemeResourcesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    const-class v0, Landroid/content/res/MiuiResources;

    monitor-enter v0

    .line 172
    :try_start_0
    sget-object v1, Landroid/content/res/MiuiResources;->sThemeResourcesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    sget-object v1, Landroid/content/res/MiuiResources;->sThemeResourcesMap:Ljava/util/Map;

    new-instance v2, Lmiui/content/res/ThemeResources;

    invoke-direct {v2, p0, p1}, Lmiui/content/res/ThemeResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_1
    sget-object v0, Landroid/content/res/MiuiResources;->sThemeResourcesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/content/res/ThemeResources;

    return-object p0

    .line 175
    .restart local p0
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private replaceTypedArray(Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;
    .locals 7
    .parameter "array"
    .parameter "themeResources"

    .prologue
    .line 184
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lmiui/content/res/ThemeResources;->hasTypedTheme()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 186
    .local v0, data:[I
    const/4 v2, 0x0

    .line 188
    .local v2, index:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 189
    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    .line 190
    .local v4, type:I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 191
    .local v1, id:I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1

    .line 192
    invoke-virtual {p2, v1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 193
    .local v3, themeInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 194
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 202
    .end local v3           #themeInteger:Ljava/lang/Integer;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x6

    .line 203
    goto :goto_0

    .line 196
    :cond_1
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 197
    invoke-virtual {p2, v1}, Lmiui/content/res/ThemeResources;->getThemeDimension(I)Ljava/lang/Integer;

    move-result-object v3

    .line 198
    .restart local v3       #themeInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 199
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    goto :goto_1

    .line 205
    .end local v0           #data:[I
    .end local v1           #id:I
    .end local v2           #index:I
    .end local v3           #themeInteger:Ljava/lang/Integer;
    .end local v4           #type:I
    :cond_2
    return-object p1
.end method


# virtual methods
.method public getText(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;

    move-result-object v1

    .line 38
    .local v1, themeResources:Lmiui/content/res/ThemeResources;
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 40
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 44
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"
    .parameter "def"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;

    move-result-object v1

    .line 50
    .local v1, themeResources:Lmiui/content/res/ThemeResources;
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 52
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 56
    .end local v0           #cs:Ljava/lang/CharSequence;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 62
    invoke-direct {p0, p1}, Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;

    move-result-object v1

    .line 63
    .local v1, themeResources:Lmiui/content/res/ThemeResources;
    if-eqz v1, :cond_0

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    iget v2, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    .line 65
    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 66
    .local v0, themeInteger:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 70
    .end local v0           #themeInteger:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "value"
    .parameter "id"

    .prologue
    .line 128
    invoke-direct {p0, p2}, Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;

    move-result-object v3

    .line 129
    .local v3, themeResources:Lmiui/content/res/ThemeResources;
    if-eqz v3, :cond_1

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    iget-object v4, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, file:Ljava/lang/String;
    iget v4, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v3, v4, v1}, Lmiui/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 133
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 135
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0, p1, v2, v1, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v4, v0

    .line 143
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #is:Ljava/io/InputStream;
    :goto_1
    return-object v4

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    .line 138
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v1       #file:Ljava/lang/String;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 137
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Landroid/content/res/MiuiResources$MIUITheme;

    invoke-direct {v0, p0}, Landroid/content/res/MiuiResources$MIUITheme;-><init>(Landroid/content/res/MiuiResources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 2
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 108
    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-direct {p0, v1}, Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;

    move-result-object v0

    .line 109
    .local v0, themeResources:Lmiui/content/res/ThemeResources;
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/content/res/MiuiResources;->replaceTypedArray(Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;

    move-result-object v0

    .line 75
    .local v0, themeResources:Lmiui/content/res/ThemeResources;
    invoke-super {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/content/res/MiuiResources;->replaceTypedArray(Landroid/content/res/TypedArray;Lmiui/content/res/ThemeResources;)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 4
    .parameter "id"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/content/res/MiuiResources;->getThemeResources(I)Lmiui/content/res/ThemeResources;

    move-result-object v2

    .line 115
    .local v2, themeResources:Lmiui/content/res/ThemeResources;
    if-eqz v2, :cond_0

    .line 116
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Landroid/content/res/MiuiResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 117
    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, file:Ljava/lang/String;
    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v2, v3, v0}, Lmiui/content/res/ThemeResources;->getThemeFileStream(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 119
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 123
    .end local v0           #file:Ljava/lang/String;
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 2
    .parameter "config"
    .parameter "metrics"

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 149
    sget-object v1, Landroid/content/res/MiuiResources;->sThemeResourcesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lmiui/content/res/ThemeResources;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/content/res/ThemeResources;

    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->reload()V

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method
