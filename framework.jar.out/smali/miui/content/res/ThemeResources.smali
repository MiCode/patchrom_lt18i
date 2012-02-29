.class public Lmiui/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# static fields
.field public static final ADVANCE_LOCKSCREEN_NAME:Ljava/lang/String; = "advance"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final LAUNCHER_NAME:Ljava/lang/String; = "com.android.launcher"

.field public static final LOCKSCREEN_NAME:Ljava/lang/String; = "lockscreen"

.field public static final LOCKSCREEN_WALLPAPER_NAME:Ljava/lang/String; = "lock_wallpaper"

.field public static final LOCK_WALLPAPER_PATH:Ljava/lang/String; = "/data/system/theme/lock_wallpaper"

.field public static final MIUI_NAME:Ljava/lang/String; = "framework-miui-res"

.field public static final MIUI_PACKAGE:Ljava/lang/String; = "miui"

.field public static final SYSTEMUI_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_LOCK_WALLPAPER_PATH:Ljava/lang/String; = "/system/media/theme/default/lock_wallpaper"

.field public static final SYSTEM_PACKAGE:Ljava/lang/String; = "android"

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/system/media/theme/default"

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_ROOT:Ljava/lang/String; = "MIUI_Theme_Values"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/system/theme"

.field public static final THEME_VALUE_FILE:Ljava/lang/String; = "theme_values.xml"

.field private static final TRUE:Ljava/lang/String; = "true"

.field public static final WALLPAPER_NAME:Ljava/lang/String; = "wallpaper"

.field private static sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

.field private static sLockWallpaperModifiedTime:J

.field private static sSystem:Lmiui/content/res/ThemeResources;


# instance fields
.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDimensions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mThemeZipManager:Lmiui/content/res/ThemeZipManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lmiui/content/res/ThemeResources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v1, v2}, Lmiui/content/res/ThemeResources;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 2
    .parameter "resources"
    .parameter "packageName"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mIntegers:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mCharSequences:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mDimensions:Landroid/util/SparseArray;

    .line 92
    iput-object p1, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    .line 93
    iput-object p2, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    .line 94
    new-instance v0, Lmiui/content/res/ThemeZipManager;

    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmiui/content/res/ThemeZipManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mThemeZipManager:Lmiui/content/res/ThemeZipManager;

    .line 95
    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->reload()V

    .line 96
    return-void
.end method

.method public static clearLockWallpaperCache()V
    .locals 2

    .prologue
    .line 282
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 283
    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 284
    return-void
.end method

.method private confirmLoad()Z
    .locals 2

    .prologue
    .line 125
    const-string v0, "android"

    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-static {}, Lmiui/content/res/ThemeZipManager;->needReloadFrameworkThemeValueFile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmiui/content/res/ThemeZipManager;->needReloadLockscreenThemeValueFile()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mThemeZipManager:Lmiui/content/res/ThemeZipManager;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipManager;->needReloadPackageThemeValueFile()Z

    move-result v0

    goto :goto_0
.end method

.method public static getAwesomeLockscreenFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;
    .locals 1
    .parameter "name"
    .parameter "size"

    .prologue
    .line 275
    invoke-static {p0, p1}, Lmiui/content/res/ThemeZipManager;->getStreamFromAdvanceLockscreen(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "resource"
    .parameter "name"

    .prologue
    .line 259
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lmiui/content/res/ThemeZipManager;->getStreamFromIcon(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 263
    :cond_0
    return-object v0
.end method

.method public static getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"

    .prologue
    .line 287
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/theme/lock_wallpaper"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    const-string v2, "/system/media/theme/default/lock_wallpaper"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    sget-wide v2, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 294
    sget-object v2, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 307
    :goto_0
    return-object v2

    .line 298
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sput-wide v2, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    .line 299
    const/4 v2, 0x0

    sput-object v2, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    .line 301
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v2, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    sget-object v2, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    goto :goto_1

    .line 303
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getSystem()Lmiui/content/res/ThemeResources;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResources;

    return-object v0
.end method

.method public static hasAwesomeLockscreen()Z
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lmiui/content/res/ThemeZipManager;->containsAdvanceLockscreen()Z

    move-result v0

    return v0
.end method

.method public static hasIcon(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 255
    invoke-static {p0}, Lmiui/content/res/ThemeZipManager;->containsIcon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private load()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v4, "theme_values.xml"

    const-string v3, "android"

    .line 108
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->confirmLoad()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mIntegers:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mCharSequences:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mDimensions:Landroid/util/SparseArray;

    .line 116
    const-string v0, "android"

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mThemeZipManager:Lmiui/content/res/ThemeZipManager;

    const-string/jumbo v1, "theme_values.xml"

    invoke-virtual {v0, v4, v2}, Lmiui/content/res/ThemeZipManager;->getStreamFromFramework(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "android"

    invoke-direct {p0, v0, v3}, Lmiui/content/res/ThemeResources;->loadThemeValues(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "theme_values.xml"

    invoke-static {v4, v2}, Lmiui/content/res/ThemeZipManager;->getStreamFromAdvanceLockscreen(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "android"

    invoke-direct {p0, v0, v3}, Lmiui/content/res/ThemeResources;->loadThemeValues(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mThemeZipManager:Lmiui/content/res/ThemeZipManager;

    const-string/jumbo v1, "theme_values.xml"

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lmiui/content/res/ThemeZipManager;->getStreamFromPackage(Ljava/lang/String;Z[I)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmiui/content/res/ThemeResources;->loadThemeValues(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadThemeValues(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .parameter "is"
    .parameter "packageName"

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 136
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 137
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    invoke-direct {v1, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .end local p1
    .local v1, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v2, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4

    .line 143
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object p1, v1

    .line 149
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local p1
    :cond_0
    :goto_0
    return-void

    .line 144
    .end local p1
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v1

    .line 147
    .end local v1           #is:Ljava/io/InputStream;
    .restart local p1
    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 143
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 144
    :catch_2
    move-exception v0

    .line 145
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 143
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 146
    :goto_3
    throw v3

    .line 144
    :catch_3
    move-exception v0

    .line 145
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    .end local p1
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v3

    move-object p1, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local p1
    goto :goto_2

    .line 140
    .end local p1
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v3

    move-object p1, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local p1
    goto :goto_1
.end method

.method private mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .parameter "parser"
    .parameter "packageName"

    .prologue
    .line 160
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, tagtype:I
    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    .line 163
    :cond_1
    const/4 v9, 0x2

    if-eq v6, v9, :cond_3

    .line 164
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "No start tag found"

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 210
    .end local v6           #tagtype:I
    :catch_0
    move-exception v9

    .line 215
    :cond_2
    :goto_0
    return-void

    .line 167
    .restart local v6       #tagtype:I
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MIUI_Theme_Values"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 168
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected start tag: found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MIUI_Theme_Values"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 211
    .end local v6           #tagtype:I
    :catch_1
    move-exception v9

    goto :goto_0

    .line 173
    .restart local v6       #tagtype:I
    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v9, 0x2

    if-eq v6, v9, :cond_5

    const/4 v9, 0x1

    if-ne v6, v9, :cond_4

    .line 175
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, type:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 179
    const/4 v4, 0x0

    .line 180
    .local v4, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 181
    .local v5, pkg:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int v2, v9, v10

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_8

    .line 182
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, attrName:Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 184
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 181
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 185
    :cond_7
    const-string v9, "package"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 186
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 189
    .end local v0           #attrName:Ljava/lang/String;
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 190
    .local v8, value:Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 193
    if-nez v5, :cond_9

    iget-object v9, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v4, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v3, v9

    .line 195
    .local v3, id:I
    :goto_4
    if-lez v3, :cond_4

    .line 196
    const-string v9, "bool"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 197
    iget-object v9, p0, Lmiui/content/res/ThemeResources;->mIntegers:Landroid/util/SparseArray;

    const-string/jumbo v10, "true"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 212
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #tagtype:I
    .end local v7           #type:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :catch_2
    move-exception v9

    goto/16 :goto_0

    .line 193
    .restart local v2       #i:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #pkg:Ljava/lang/String;
    .restart local v6       #tagtype:I
    .restart local v7       #type:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :cond_9
    iget-object v9, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v3, v9

    goto :goto_4

    .line 197
    .restart local v3       #id:I
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 198
    :cond_b
    const-string v9, "color"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "integer"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 199
    :cond_c
    iget-object v9, p0, Lmiui/content/res/ThemeResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 213
    .end local v2           #i:I
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #pkg:Ljava/lang/String;
    .end local v6           #tagtype:I
    .end local v7           #type:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 200
    .restart local v2       #i:I
    .restart local v3       #id:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #pkg:Ljava/lang/String;
    .restart local v6       #tagtype:I
    .restart local v7       #type:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :cond_d
    const-string/jumbo v9, "string"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 201
    iget-object v9, p0, Lmiui/content/res/ThemeResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v9, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 202
    :cond_e
    const-string v9, "dimen"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 203
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/app/MiuiThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 204
    .local v1, dimen:Ljava/lang/Integer;
    if-eqz v1, :cond_4

    .line 205
    iget-object v9, p0, Lmiui/content/res/ThemeResources;->mDimensions:Landroid/util/SparseArray;

    invoke-virtual {v9, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_1
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mThemeZipManager:Lmiui/content/res/ThemeZipManager;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipManager;->reset()V

    .line 105
    return-void
.end method

.method public static resetIcons()V
    .locals 0

    .prologue
    .line 267
    invoke-static {}, Lmiui/content/res/ThemeZipManager;->resetIcons()V

    .line 268
    return-void
.end method


# virtual methods
.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "id"

    .prologue
    .line 234
    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 235
    .local v0, ret:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const-string v1, "android"

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 238
    :cond_0
    return-object v0
.end method

.method public getThemeDimension(I)Ljava/lang/Integer;
    .locals 3
    .parameter "id"

    .prologue
    .line 242
    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mDimensions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 243
    .local v0, ret:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const-string v1, "android"

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeDimension(I)Ljava/lang/Integer;

    move-result-object v0

    .line 246
    :cond_0
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "cookie"
    .parameter "fileName"

    .prologue
    const/4 v2, 0x0

    .line 250
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mThemeZipManager:Lmiui/content/res/ThemeZipManager;

    invoke-virtual {v0, p2, v2}, Lmiui/content/res/ThemeZipManager;->getStreamFromFramework(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mThemeZipManager:Lmiui/content/res/ThemeZipManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lmiui/content/res/ThemeZipManager;->getStreamFromPackage(Ljava/lang/String;Z[I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 3
    .parameter "id"

    .prologue
    .line 226
    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 227
    .local v0, ret:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const-string v1, "android"

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResources;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 230
    :cond_0
    return-object v0
.end method

.method public hasTypedTheme()Z
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mDimensions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 219
    .local v0, ret:Z
    :goto_0
    if-nez v0, :cond_1

    const-string v1, "android"

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResources;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/content/res/ThemeResources;->hasTypedTheme()Z

    move-result v0

    .line 222
    :cond_1
    return v0

    .line 218
    .end local v0           #ret:Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public mergeThemeValues(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 152
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->reset()V

    .line 100
    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->load()V

    .line 101
    return-void
.end method
