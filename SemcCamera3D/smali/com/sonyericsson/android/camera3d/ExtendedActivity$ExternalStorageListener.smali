.class public interface abstract Lcom/sonyericsson/android/camera3d/ExtendedActivity$ExternalStorageListener;
.super Ljava/lang/Object;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ExtendedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalStorageListener"
.end annotation


# static fields
.field public static final MEMORY_EVENT_EJECT:I = 0x3

.field public static final MEMORY_EVENT_MOUNTED:I = 0x1

.field public static final MEMORY_EVENT_UNMOUNTED:I = 0x2


# virtual methods
.method public abstract onExternalStorageStateChanged(ILjava/lang/String;)V
.end method
