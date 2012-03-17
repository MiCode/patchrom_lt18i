.class public final enum Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;
.super Ljava/lang/Enum;
.source "SlideDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

.field public static final enum LEFT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

.field public static final enum NONE:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

.field public static final enum RIGHT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->LEFT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->RIGHT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->NONE:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->LEFT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->RIGHT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->NONE:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static detectSlideDirection(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Z)Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;
    .locals 8
    .parameter "previous"
    .parameter "current"
    .parameter "isShouldMirror"

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getIndex()I

    move-result v6

    if-eq v6, v7, :cond_0

    move v3, v4

    .line 42
    .local v3, isPrevValid:Z
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getIndex()I

    move-result v6

    if-eq v6, v7, :cond_1

    move v2, v4

    .line 45
    .local v2, isNextValid:Z
    :goto_1
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getIndex()I

    move-result v7

    sub-int/2addr v6, v7

    if-lez v6, :cond_2

    move v1, v4

    .line 47
    .local v1, increment:Z
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getIndex()I

    move-result v6

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->getIndex()I

    move-result v7

    sub-int/2addr v6, v7

    if-gez v6, :cond_3

    move v0, v4

    .line 48
    .local v0, decrement:Z
    :goto_3
    if-eqz p2, :cond_5

    .line 49
    if-eqz v1, :cond_4

    .line 50
    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->LEFT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    .line 62
    .end local v0           #decrement:Z
    .end local v1           #increment:Z
    :goto_4
    return-object v4

    .end local v2           #isNextValid:Z
    .end local v3           #isPrevValid:Z
    :cond_0
    move v3, v5

    .line 39
    goto :goto_0

    .restart local v3       #isPrevValid:Z
    :cond_1
    move v2, v5

    .line 42
    goto :goto_1

    .restart local v2       #isNextValid:Z
    :cond_2
    move v1, v5

    .line 46
    goto :goto_2

    .restart local v1       #increment:Z
    :cond_3
    move v0, v5

    .line 47
    goto :goto_3

    .line 51
    .restart local v0       #decrement:Z
    :cond_4
    if-eqz v0, :cond_7

    .line 52
    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->RIGHT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    goto :goto_4

    .line 55
    :cond_5
    if-eqz v1, :cond_6

    .line 56
    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->RIGHT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    goto :goto_4

    .line 57
    :cond_6
    if-eqz v0, :cond_7

    .line 58
    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->LEFT:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    goto :goto_4

    .line 62
    .end local v0           #decrement:Z
    .end local v1           #increment:Z
    :cond_7
    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->NONE:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    return-object v0
.end method
