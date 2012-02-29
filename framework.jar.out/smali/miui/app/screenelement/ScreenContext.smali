.class public Lmiui/app/screenelement/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# instance fields
.field public mBatteryLevel:I

.field public final mContext:Landroid/content/Context;

.field public final mFactory:Lmiui/app/screenelement/ScreenElementFactory;

.field public mPluggedIn:Z

.field public final mResourceManager:Lmiui/app/screenelement/ResourceManager;

.field public mRoot:Lmiui/app/screenelement/ScreenElement;

.field public mShouldUpdate:Z

.field public mShowingBatteryInfo:Z

.field public mVariables:Lmiui/app/screenelement/Variables;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"

    .prologue
    .line 21
    new-instance v0, Lmiui/app/screenelement/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/app/screenelement/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmiui/app/screenelement/ScreenContext;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/ScreenElementFactory;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;Lmiui/app/screenelement/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lmiui/app/screenelement/Variables;

    invoke-direct {v0}, Lmiui/app/screenelement/Variables;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    .line 26
    iput-object p1, p0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    .line 28
    iput-object p3, p0, Lmiui/app/screenelement/ScreenContext;->mFactory:Lmiui/app/screenelement/ScreenElementFactory;

    .line 29
    return-void
.end method
