.class public final Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;
.super Ljava/lang/Object;
.source "ShortcutItem.java"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public mClassName:Ljava/lang/String;

.field public mExtraKey:Ljava/lang/String;

.field public mExtraValue:Ljava/lang/String;

.field public final mIconResourceId:I

.field public mPackageName:Ljava/lang/String;

.field public final mTextResourceId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "iconResourceId"
    .parameter "textResourceId"
    .parameter "action"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mIconResourceId:I

    .line 43
    iput p2, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mTextResourceId:I

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mAction:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public setClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mClassName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setExtras(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mExtraKey:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/shortcut/ShortcutItem;->mExtraValue:Ljava/lang/String;

    .line 55
    return-void
.end method
