.class public Lcom/sonyericsson/android/camera3d/MasterResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterResetReceiver.java"


# static fields
.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera3d.shared_preferences"

.field private static final TAG:Ljava/lang/String; = "MasterResetReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static resetPreferences(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "Preferences"
    .parameter "context"

    .prologue
    .line 54
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, sharedpreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    const-string v0, "com.sonyericsson.android.camera3d.shared_preferences"

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera3d/MasterResetReceiver;->resetPreferences(Ljava/lang/String;Landroid/content/Context;)V

    .line 50
    return-void
.end method
