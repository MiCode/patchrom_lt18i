.class public final enum Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

.field public static final enum OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

.field public static final enum OUTPUT_3D_SIDE_BY_SIDE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

.field public static final enum OUTPUT_3D_TOP_AND_BOTTOM:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

.field public static final enum OUTPUT_NONE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    const-string v1, "OUTPUT_3D_SIDE_BY_SIDE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_SIDE_BY_SIDE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 148
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    const-string v1, "OUTPUT_3D_TOP_AND_BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_TOP_AND_BOTTOM:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 149
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    const-string v1, "OUTPUT_2D"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 150
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    const-string v1, "OUTPUT_NONE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_NONE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_SIDE_BY_SIDE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_TOP_AND_BOTTOM:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_NONE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 146
    const-class v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->$VALUES:[Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    return-object v0
.end method


# virtual methods
.method public is3D()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 156
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_SIDE_BY_SIDE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_TOP_AND_BOTTOM:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method
