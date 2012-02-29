.class public Lmiui/content/res/ExtraConfiguration;
.super Ljava/lang/Object;
.source "ExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/content/res/ExtraConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACTS_PKG_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final LAUNCHER_PKG_NAME:Ljava/lang/String; = "com.android.launcher"

.field public static final MMS_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SETTINGS_PKG_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_INTRESTE_CHANGE_FLAG:J = 0x10007899L

.field public static final THEME_FLAG_ALARM:J = 0x400L

.field public static final THEME_FLAG_AUDIO_EFFECT:J = 0x8000L

.field public static final THEME_FLAG_BOOT_ANIMATION:J = 0x20L

.field public static final THEME_FLAG_BOOT_AUDIO:J = 0x40L

.field public static final THEME_FLAG_CONTACT:J = 0x800L

.field public static final THEME_FLAG_FONT:J = 0x10L

.field public static final THEME_FLAG_FRAMEWORK:J = 0x1L

.field public static final THEME_FLAG_ICON:J = 0x8L

.field public static final THEME_FLAG_LAST:J = 0x8000L

.field public static final THEME_FLAG_LAUNCHER:J = 0x4000L

.field public static final THEME_FLAG_LOCKSCREEN:J = 0x4L

.field public static final THEME_FLAG_LOCKSTYLE:J = 0x1000L

.field public static final THEME_FLAG_MMS:J = 0x80L

.field public static final THEME_FLAG_NOTIFICATION:J = 0x200L

.field public static final THEME_FLAG_RINGTONE:J = 0x100L

.field public static final THEME_FLAG_STATUSBAR:J = 0x2000L

.field public static final THEME_FLAG_THIRD_APP:J = 0x10000000L

.field public static final THEME_FLAG_WALLPAPER:J = 0x2L

.field private static final needRestartActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public themeChanged:I

.field public themeChangedFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static addNeedRestartActivity(J)V
    .locals 2
    .parameter "themeChangeFlags"

    .prologue
    .line 125
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.launcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    invoke-static {p0, p1}, Lmiui/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_3
    return-void
.end method

.method public static needNewResources(I)Z
    .locals 1
    .parameter "configChanges"

    .prologue
    .line 91
    const/high16 v0, -0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestart3rdApp(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 178
    const-wide/32 v0, 0x10000011

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartActivity(Ljava/lang/String;J)Z
    .locals 1
    .parameter "packageName"
    .parameter "themeChangeFlags"

    .prologue
    .line 144
    if-eqz p0, :cond_3

    .line 145
    const-string v0, "com.android.launcher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartLauncher(J)Z

    move-result v0

    .line 158
    :goto_0
    return v0

    .line 148
    :cond_0
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartSettings(J)Z

    move-result v0

    goto :goto_0

    .line 151
    :cond_1
    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartMms(J)Z

    move-result v0

    goto :goto_0

    .line 154
    :cond_2
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestartContacts(J)Z

    move-result v0

    goto :goto_0

    .line 158
    :cond_3
    invoke-static {p1, p2}, Lmiui/content/res/ExtraConfiguration;->needRestart3rdApp(J)Z

    move-result v0

    goto :goto_0
.end method

.method public static needRestartContacts(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 174
    const-wide/16 v0, 0x811

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartLauncher(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 162
    const-wide/16 v0, 0x4019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartMms(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 170
    const-wide/16 v0, 0x91

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartSettings(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 166
    const-wide/16 v0, 0x19

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartStatusBar(J)Z
    .locals 4
    .parameter "themeChangeFlags"

    .prologue
    .line 182
    const-wide/16 v0, 0x2019

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeNeedRestartActivity(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 140
    sget-object v0, Lmiui/content/res/ExtraConfiguration;->needRestartActivitySet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Lmiui/content/res/ExtraConfiguration;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/content/res/ExtraConfiguration;->compareTo(Lmiui/content/res/ExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/content/res/ExtraConfiguration;)I
    .locals 3
    .parameter "that"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, n:I
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    sub-int v0, v1, v2

    .line 108
    if-eqz v0, :cond_0

    .line 111
    :cond_0
    return v0
.end method

.method public diff(Lmiui/content/res/ExtraConfiguration;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, changed:I
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 85
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 87
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 116
    iget v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget-wide v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 102
    return-void
.end method

.method public setTo(Lmiui/content/res/ExtraConfiguration;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 53
    iget v0, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 54
    iget-wide v0, p1, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 55
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-wide v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Lmiui/content/res/ExtraConfiguration;)I
    .locals 3
    .parameter "delta"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, changed:I
    iget v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iget v2, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 75
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 76
    iget v1, p1, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    iput v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 77
    iget-wide v1, p1, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    iput-wide v1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 79
    :cond_0
    return v0
.end method

.method public updateTheme(J)V
    .locals 1
    .parameter "changedFlags"

    .prologue
    .line 120
    iget v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .line 121
    iput-wide p1, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    .line 122
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 95
    iget v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-wide v0, p0, Lmiui/content/res/ExtraConfiguration;->themeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    return-void
.end method
