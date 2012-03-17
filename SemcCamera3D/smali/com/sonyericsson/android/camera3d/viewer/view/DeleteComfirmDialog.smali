.class public Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;
.super Ljava/lang/Object;
.source "DeleteComfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$CancelButton;,
        Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteAllButton;,
        Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteCurrentButton;,
        Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;,
        Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareDialog"


# instance fields
.field private final mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private final mListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)V
    .locals 11
    .parameter "context"
    .parameter "listener"
    .parameter "fileInfo"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

    .line 103
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 104
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 106
    const/4 v7, 0x0

    .line 107
    .local v7, positiveButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    const/4 v6, 0x0

    .line 108
    .local v6, neturalButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    const/4 v5, 0x0

    .line 110
    .local v5, negativeButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    iget v9, p3, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mRelatedMpoFileId:I

    if-gtz v9, :cond_4

    const/4 v4, 0x1

    .line 111
    .local v4, indexIsInvalid:Z
    :goto_0
    iget-object v9, p3, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    sget-object v10, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne v9, v10, :cond_5

    const/4 v8, 0x1

    .line 112
    .local v8, typeIsUnknown:Z
    :goto_1
    if-nez v4, :cond_0

    if-eqz v8, :cond_6

    .line 114
    :cond_0
    const v2, 0x7f0c0118

    .line 115
    .local v2, current:I
    new-instance v7, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteCurrentButton;

    .end local v7           #positiveButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    invoke-direct {v7, p0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteCurrentButton;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;I)V

    .line 116
    .restart local v7       #positiveButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0c0086

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 117
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0c00dd

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 118
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 136
    :goto_2
    const v1, 0x7f0c0119

    .line 137
    .local v1, cancel:I
    new-instance v5, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$CancelButton;

    .end local v5           #negativeButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    invoke-direct {v5, p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$CancelButton;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;I)V

    .line 139
    .restart local v5       #negativeButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    if-eqz v7, :cond_1

    .line 140
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget v10, v7, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;->mTextId:I

    invoke-virtual {v9, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    :cond_1
    if-eqz v6, :cond_2

    .line 143
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget v10, v6, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;->mTextId:I

    invoke-virtual {v9, v10, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    :cond_2
    if-eqz v5, :cond_3

    .line 146
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget v10, v5, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;->mTextId:I

    invoke-virtual {v9, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    :cond_3
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$1;

    invoke-direct {v10, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mDialog:Landroid/app/Dialog;

    .line 157
    return-void

    .line 110
    .end local v1           #cancel:I
    .end local v2           #current:I
    .end local v4           #indexIsInvalid:Z
    .end local v8           #typeIsUnknown:Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 111
    .restart local v4       #indexIsInvalid:Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 122
    .restart local v8       #typeIsUnknown:Z
    :cond_6
    const v2, 0x7f0c0089

    .line 123
    .restart local v2       #current:I
    iget-object v9, p3, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    sget-object v10, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne v9, v10, :cond_7

    const v0, 0x7f0c0088

    .line 126
    .local v0, all:I
    :goto_3
    new-instance v7, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteAllButton;

    .end local v7           #positiveButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    invoke-direct {v7, p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteAllButton;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;I)V

    .line 127
    .restart local v7       #positiveButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    new-instance v6, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteCurrentButton;

    .end local v6           #neturalButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    invoke-direct {v6, p0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$DeleteCurrentButton;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;I)V

    .line 129
    .restart local v6       #neturalButton:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$Button;
    iget-object v9, p3, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    sget-object v10, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-ne v9, v10, :cond_8

    const v3, 0x7f0c00c4

    .line 132
    .local v3, deleteString:I
    :goto_4
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 133
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0c00dd

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 134
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 123
    .end local v0           #all:I
    .end local v3           #deleteString:I
    :cond_7
    const v0, 0x7f0c0087

    goto :goto_3

    .line 129
    .restart local v0       #all:I
    :cond_8
    const v3, 0x7f0c00c3

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;)Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog$ComfirmListener;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 170
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 173
    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mDialog:Landroid/app/Dialog;

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/DeleteComfirmDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method
