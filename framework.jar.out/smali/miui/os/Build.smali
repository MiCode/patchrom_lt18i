.class public Lmiui/os/Build;
.super Landroid/os/Build;
.source "Build.java"


# static fields
.field public static final IS_DEFY:Z

.field public static final IS_DESIRE:Z

.field public static final IS_FAST_GPU_DEVICE:Z

.field public static final IS_GALAXYS2:Z

.field public static final IS_HTC_HD2:Z

.field public static final IS_I9000:Z

.field public static final IS_LOW_MEMORY_DEVICE:Z

.field public static final IS_MILESTONE:Z

.field public static final IS_MIONE:Z

.field public static final IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z

.field public static final IS_NEXUS_ONE:Z

.field public static final IS_NEXUS_S:Z

.field public static final IS_P990:Z

.field public static final IS_RICH_MEMORY_DEVICE:Z

.field public static final IS_T959:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    const-string v0, "jordan"

    sget-object v1, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    .line 9
    const-string v0, "bravo"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_DESIRE:Z

    .line 10
    const-string v0, "galaxys2"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9100"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    .line 11
    const-string v0, "htcleo"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "leo"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    move v0, v3

    :goto_1
    sput-boolean v0, Lmiui/os/Build;->IS_HTC_HD2:Z

    .line 12
    const-string v0, "aries"

    sget-object v1, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    .line 13
    const-string/jumbo v0, "umts_sholes"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    .line 14
    const-string v0, "mione"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mione_plus"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    move v0, v3

    :goto_2
    sput-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    .line 15
    const-string v0, "passion"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_ONE:Z

    .line 16
    const-string v0, "crespo"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    .line 17
    const-string v0, "p990"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_P990:Z

    .line 18
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "vibrant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiui/os/Build;->IS_T959:Z

    .line 20
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_9

    :cond_3
    move v0, v3

    :goto_3
    sput-boolean v0, Lmiui/os/Build;->IS_RICH_MEMORY_DEVICE:Z

    .line 21
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    sput-boolean v0, Lmiui/os/Build;->IS_LOW_MEMORY_DEVICE:Z

    .line 23
    sget-boolean v0, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v0, :cond_a

    :cond_4
    move v0, v3

    :goto_4
    sput-boolean v0, Lmiui/os/Build;->IS_FAST_GPU_DEVICE:Z

    .line 26
    sget-boolean v0, Lmiui/os/Build;->IS_MILESTONE:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_NEXUS_S:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_I9000:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_DEFY:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_P990:Z

    if-eqz v0, :cond_b

    :cond_5
    move v0, v3

    :goto_5
    sput-boolean v0, Lmiui/os/Build;->IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z

    return-void

    :cond_6
    move v0, v2

    .line 10
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 11
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 14
    goto :goto_2

    :cond_9
    move v0, v2

    .line 20
    goto :goto_3

    :cond_a
    move v0, v2

    .line 23
    goto :goto_4

    :cond_b
    move v0, v2

    .line 26
    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    return-void
.end method
