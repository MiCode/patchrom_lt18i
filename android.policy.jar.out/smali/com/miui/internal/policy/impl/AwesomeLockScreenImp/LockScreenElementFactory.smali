.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;
.super Lmiui/app/screenelement/ScreenElementFactory;
.source "LockScreenElementFactory.java"


# instance fields
.field private final mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

.field private final mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;


# direct methods
.method public constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;)V
    .locals 0
    .parameter "unlockerCallback"
    .parameter "unlockerListener"

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/app/screenelement/ScreenElementFactory;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 18
    iput-object p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    .line 19
    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/ScreenElement;
    .locals 4
    .parameter "ele"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, tag:Ljava/lang/String;
    const-string v1, "Unlocker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementFactory;->mUnlockerListener:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;)V

    .line 27
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/screenelement/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v1

    goto :goto_0
.end method
