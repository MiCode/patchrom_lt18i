.class public interface abstract Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;
.super Ljava/lang/Object;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingsDialogInterface"
.end annotation


# virtual methods
.method public abstract cancelAnimation()V
.end method

.method public abstract close()V
.end method

.method public abstract commit()I
.end method

.method public abstract getVisibility()I
.end method

.method public abstract open(Z)Z
.end method

.method public abstract release()V
.end method

.method public abstract setButton(Ljava/lang/Object;IIZ)V
.end method

.method public abstract setDialogListener(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setTitle(IF)V
.end method

.method public abstract startCloseAnimation(Landroid/view/animation/Animation;)V
.end method
