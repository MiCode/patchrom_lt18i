.class public Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareDialog"


# instance fields
.field private final mBuilder:Landroid/app/AlertDialog$Builder;

.field private final mCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private final mIntent:Landroid/content/Intent;

.field private final mResolveInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V
    .locals 8
    .parameter "context"
    .parameter "closeListener"
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mContext:Landroid/content/Context;

    .line 74
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mIntent:Landroid/content/Intent;

    .line 75
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    sget-object v6, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;->TARGET_MPO_FILE:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;

    invoke-virtual {p3, v6}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->getUri(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo$MpoFileType;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mIntent:Landroid/content/Intent;

    const-string v5, "image/mpo"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 82
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mIntent:Landroid/content/Intent;

    const v5, 0x10040

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getShareExcludes()[Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, excludeList:[Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfig;->removeShareExcludes(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mResolveInfo:Ljava/util/List;

    .line 88
    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mResolveInfo:Ljava/util/List;

    invoke-direct {v1, p1, v4}, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 90
    .local v1, adapter:Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ShareAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 91
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0c007c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 94
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mDialog:Landroid/app/Dialog;

    .line 121
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;->onClose(Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;)V

    .line 140
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mResolveInfo:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 126
    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mResolveInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mResolveInfo:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 128
    .local v0, info:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 129
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launch(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 136
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mCloseListener:Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog$CloseListener;->onClose(Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;)V

    .line 144
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 147
    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mDialog:Landroid/app/Dialog;

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ShareDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method
