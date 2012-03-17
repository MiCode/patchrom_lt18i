.class final enum Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;
.super Ljava/lang/Enum;
.source "YuvOutBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/YuvOutBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FillingColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

.field public static final enum DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

.field public static final enum GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    const-string v1, "GRAY"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    .line 76
    new-instance v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    const-string v1, "DARK_GRAY"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->DARK_GRAY:Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->$VALUES:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->$VALUES:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/YuvOutBuffer$FillingColor;

    return-object v0
.end method
