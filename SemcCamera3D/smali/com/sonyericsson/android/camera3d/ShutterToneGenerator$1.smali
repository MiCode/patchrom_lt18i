.class final Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$1;
.super Ljava/lang/Object;
.source "ShutterToneGenerator.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->test(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 191
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 192
    return-void
.end method
