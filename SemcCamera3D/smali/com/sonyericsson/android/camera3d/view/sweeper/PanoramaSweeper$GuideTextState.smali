.class final enum Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;
.super Ljava/lang/Enum;
.source "PanoramaSweeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GuideTextState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

.field public static final enum HIDDEN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

.field public static final enum SHOWN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    const-string v1, "SHOWN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->SHOWN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    .line 77
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->HIDDEN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    sget-object v1, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->SHOWN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->HIDDEN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->$VALUES:[Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    const-class v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->$VALUES:[Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    return-object v0
.end method
