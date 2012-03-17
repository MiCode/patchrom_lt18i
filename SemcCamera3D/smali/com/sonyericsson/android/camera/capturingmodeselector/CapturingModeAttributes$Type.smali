.class final enum Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;
.super Ljava/lang/Enum;
.source "CapturingModeAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

.field public static final enum Camera:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

.field public static final enum Non:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

.field public static final enum Video:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    const-string v1, "Camera"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Camera:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    const-string v1, "Video"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Video:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    const-string v1, "Non"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Non:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Camera:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Video:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->Non:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->$VALUES:[Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->$VALUES:[Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes$Type;

    return-object v0
.end method
