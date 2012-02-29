.class public Lmiui/provider/ExtraSettings$Secure;
.super Ljava/lang/Object;
.source "ExtraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Secure"
.end annotation


# static fields
.field public static final PRIVACY_MODE_ENABLED:Ljava/lang/String; = "privacy_mode_enabled"

.field public static final USB_MODE:Ljava/lang/String; = "usb_mode"

.field public static final USB_MODE_ASK_USER:I = 0x0

.field public static final USB_MODE_CHARGE_ONLY:I = 0x1

.field public static final USB_MODE_MOUNT_STORAGE:I = 0x2

.field private static sStorageThreshold:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 380
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageThreshold(Landroid/content/ContentResolver;)J
    .locals 6
    .parameter "resolver"

    .prologue
    .line 383
    sget-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 384
    const-string/jumbo v2, "sys_storage_threshold_percentage"

    const/16 v3, 0xa

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 389
    .local v1, value:I
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, stats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    int-to-long v4, v1

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    sput-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    .line 392
    .end local v0           #stats:Landroid/os/StatFs;
    .end local v1           #value:I
    :cond_0
    sget-wide v2, Lmiui/provider/ExtraSettings$Secure;->sStorageThreshold:J

    return-wide v2
.end method
