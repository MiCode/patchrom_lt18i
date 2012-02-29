.class Lmiui/content/res/ThemeZipManager;
.super Ljava/lang/Object;
.source "ThemeZipManager.java"


# static fields
.field private static final sFrameworkZip:Lmiui/content/res/ThemeZipFile;

.field private static final sIconsZip:Lmiui/content/res/ThemeZipFile;

.field private static final sLockscreenZip:Lmiui/content/res/ThemeZipFile;

.field private static final sSystemUIZip:Lmiui/content/res/ThemeZipFile;


# instance fields
.field private mIsLauncherPkgName:Z

.field private mZipPackage:Lmiui/content/res/ThemeZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lmiui/content/res/ThemeZipFile;

    const-string v1, "framework-res"

    invoke-direct {v0, v1}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/content/res/ThemeZipManager;->sFrameworkZip:Lmiui/content/res/ThemeZipFile;

    .line 12
    new-instance v0, Lmiui/content/res/ThemeZipFile;

    const-string v1, "icons"

    invoke-direct {v0, v1}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/content/res/ThemeZipManager;->sIconsZip:Lmiui/content/res/ThemeZipFile;

    .line 13
    new-instance v0, Lmiui/content/res/ThemeZipFile;

    const-string v1, "lockscreen"

    invoke-direct {v0, v1}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/content/res/ThemeZipManager;->sLockscreenZip:Lmiui/content/res/ThemeZipFile;

    .line 14
    new-instance v0, Lmiui/content/res/ThemeZipFile;

    const-string v1, "com.android.systemui"

    invoke-direct {v0, v1}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/content/res/ThemeZipManager;->sSystemUIZip:Lmiui/content/res/ThemeZipFile;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/content/res/ThemeZipManager;->mZipPackage:Lmiui/content/res/ThemeZipFile;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/content/res/ThemeZipManager;->mIsLauncherPkgName:Z

    .line 25
    new-instance v0, Lmiui/content/res/ThemeZipFile;

    invoke-static {p1}, Lmiui/content/res/ThemeZipManager;->getThemeZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/content/res/ThemeZipManager;->mZipPackage:Lmiui/content/res/ThemeZipFile;

    .line 26
    const-string v0, "com.android.launcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/content/res/ThemeZipManager;->mIsLauncherPkgName:Z

    .line 27
    return-void
.end method

.method public static containsAdvanceLockscreen()Z
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sLockscreenZip:Lmiui/content/res/ThemeZipFile;

    const-string v1, "advance/manifest.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static containsIcon(Ljava/lang/String;)Z
    .locals 1
    .parameter "iconName"

    .prologue
    .line 93
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sIconsZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0, p0}, Lmiui/content/res/ThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getStreamFromAdvanceLockscreen(Ljava/lang/String;[I)Ljava/io/InputStream;
    .locals 3
    .parameter "fileName"
    .parameter "size"

    .prologue
    .line 101
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sLockscreenZip:Lmiui/content/res/ThemeZipFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmiui/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamFromIcon(Ljava/lang/String;[I)Ljava/io/InputStream;
    .locals 1
    .parameter "fileName"
    .parameter "size"

    .prologue
    .line 89
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sIconsZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0, p0, p1}, Lmiui/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static getThemeZipPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "themeZipName"

    .prologue
    .line 21
    return-object p0
.end method

.method public static needReloadFrameworkThemeValueFile()Z
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sFrameworkZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->confirmReset()Z

    move-result v0

    return v0
.end method

.method public static needReloadLockscreenThemeValueFile()Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sLockscreenZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->confirmReset()Z

    move-result v0

    return v0
.end method

.method public static resetIcons()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sIconsZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->reset()V

    .line 98
    return-void
.end method


# virtual methods
.method public getStreamFromFramework(Ljava/lang/String;[I)Ljava/io/InputStream;
    .locals 4
    .parameter "relativeFilePath"
    .parameter "size"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, is:Ljava/io/InputStream;
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, name:Ljava/lang/String;
    const-string/jumbo v2, "sym_def_app_icon.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "icon_search.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "icon_browser.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    :cond_0
    sget-object v2, Lmiui/content/res/ThemeZipManager;->sIconsZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2, v1, p2}, Lmiui/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    .line 61
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, p2}, Lmiui/content/res/ThemeZipManager;->getStreamFromPackage(Ljava/lang/String;Z[I)Ljava/io/InputStream;

    move-result-object v0

    .line 64
    :cond_2
    if-nez v0, :cond_3

    .line 65
    sget-object v2, Lmiui/content/res/ThemeZipManager;->sFrameworkZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2, p1, p2}, Lmiui/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    :cond_3
    move-object v2, v0

    .line 68
    :goto_1
    return-object v2

    .line 55
    :cond_4
    const-string v2, "lock_screen_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    sget-object v2, Lmiui/content/res/ThemeZipManager;->sLockscreenZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2, v1, p2}, Lmiui/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_5
    const-string v2, "default_wallpaper.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getStreamFromPackage(Ljava/lang/String;Z[I)Ljava/io/InputStream;
    .locals 3
    .parameter "relativeFilePath"
    .parameter "framework"
    .parameter "size"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, is:Ljava/io/InputStream;
    if-nez p2, :cond_1

    .line 74
    iget-boolean v2, p0, Lmiui/content/res/ThemeZipManager;->mIsLauncherPkgName:Z

    if-eqz v2, :cond_1

    .line 75
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, name:Ljava/lang/String;
    const-string v2, "icon_folder.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "folder_icon_cover_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    sget-object v2, Lmiui/content/res/ThemeZipManager;->sIconsZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2, v1, p3}, Lmiui/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    .line 81
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 82
    iget-object v2, p0, Lmiui/content/res/ThemeZipManager;->mZipPackage:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2, p1, p3}, Lmiui/content/res/ThemeZipFile;->getInputStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v0

    .line 85
    :cond_2
    return-object v0
.end method

.method public needReloadPackageThemeValueFile()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/content/res/ThemeZipManager;->mZipPackage:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->confirmReset()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sFrameworkZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->reset()V

    .line 31
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sIconsZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->reset()V

    .line 32
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sLockscreenZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->reset()V

    .line 33
    sget-object v0, Lmiui/content/res/ThemeZipManager;->sSystemUIZip:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->reset()V

    .line 34
    iget-object v0, p0, Lmiui/content/res/ThemeZipManager;->mZipPackage:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->reset()V

    .line 35
    return-void
.end method
