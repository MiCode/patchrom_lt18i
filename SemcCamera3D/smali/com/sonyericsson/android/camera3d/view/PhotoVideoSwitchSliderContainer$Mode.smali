.class public final enum Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;
.super Ljava/lang/Enum;
.source "PhotoVideoSwitchSliderContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

.field public static final enum PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

.field public static final enum VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    sget-object v1, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->PHOTO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->VIDEO:Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->$VALUES:[Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 45
    const-class v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->$VALUES:[Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/view/PhotoVideoSwitchSliderContainer$Mode;

    return-object v0
.end method
