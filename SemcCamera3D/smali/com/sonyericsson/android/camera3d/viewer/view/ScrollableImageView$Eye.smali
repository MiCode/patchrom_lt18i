.class final enum Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;
.super Ljava/lang/Enum;
.source "ScrollableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Eye"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

.field public static final enum Left:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

.field public static final enum Right:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Left:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Right:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Left:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Right:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    return-object v0
.end method
