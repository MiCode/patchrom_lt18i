.class public Lcom/android/internal/policy/impl/MiuiPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "MiuiPhoneWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method protected handleCameraKeyEvent(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;IZLandroid/view/Window$Callback;I)Z
    .locals 10
    .parameter "decorView"
    .parameter "keyCode"
    .parameter "isDown"
    .parameter "cb"
    .parameter "featureId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 78
    const/4 v0, 0x0

    .line 82
    .local v0, handled:Z
    const/16 v5, 0x1b

    if-ne p2, v5, :cond_2

    if-nez p3, :cond_2

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, id:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "camera_key_preferred_action_type"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 87
    .local v4, type:I
    if-ne v9, v4, :cond_0

    .line 88
    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "camera_key_preferred_action_shortcut_id"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 91
    :cond_0
    const/4 v3, 0x0

    .line 92
    .local v3, mappedKeyCode:I
    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    if-eqz v3, :cond_2

    .line 102
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v8, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 103
    .local v2, mappedEvent:Landroid/view/KeyEvent;
    if-eqz p4, :cond_3

    if-gez p5, :cond_3

    invoke-interface {p4, v2}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    move v0, v5

    .line 106
    :goto_1
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #mappedEvent:Landroid/view/KeyEvent;
    invoke-direct {v2, v9, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 107
    .restart local v2       #mappedEvent:Landroid/view/KeyEvent;
    if-eqz p4, :cond_4

    if-gez p5, :cond_4

    invoke-interface {p4, v2}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    move v0, v9

    .line 112
    .end local v1           #id:I
    .end local v2           #mappedEvent:Landroid/view/KeyEvent;
    .end local v3           #mappedKeyCode:I
    .end local v4           #type:I
    :cond_2
    :goto_2
    return v0

    .line 94
    .restart local v1       #id:I
    .restart local v3       #mappedKeyCode:I
    .restart local v4       #type:I
    :pswitch_0
    const/4 v3, 0x5

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    const/16 v3, 0x54

    goto :goto_0

    .line 103
    .restart local v2       #mappedEvent:Landroid/view/KeyEvent;
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    move v0, v5

    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_5
    if-nez v0, :cond_1

    move v0, v8

    goto :goto_2

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleCustomizedCameraKey()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const-string v10, "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

    const-string v9, "android.intent.action.MAIN"

    .line 23
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 24
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 25
    .local v4, resolver:Landroid/content/ContentResolver;
    const-string v6, "camera_key_preferred_action_type"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, actionType:I
    const/4 v3, 0x0

    .line 30
    .local v3, intent:Landroid/content/Intent;
    packed-switch v0, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 68
    const/high16 v6, 0x1000

    :try_start_0
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const/high16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_1
    return-void

    .line 32
    :pswitch_0
    const-string v6, "camera_key_preferred_action_shortcut_id"

    const/4 v7, -0x1

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 35
    .local v5, shortcutId:I
    packed-switch v5, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 37
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 38
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 42
    :pswitch_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.app.ExtraStatusBarManager.CAPTURE_SCREEN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    :pswitch_4
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    .end local v5           #shortcutId:I
    :pswitch_5
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.app.ExtraStatusBarManager.TRIGGER_CAMERA_KEY"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    :pswitch_6
    const-string v6, "camera_key_preferred_action_app_component"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, componentName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 59
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 71
    .end local v1           #componentName:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 35
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
