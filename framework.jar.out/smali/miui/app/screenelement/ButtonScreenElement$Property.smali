.class abstract Lmiui/app/screenelement/ButtonScreenElement$Property;
.super Ljava/lang/Object;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ButtonScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Property"
.end annotation


# instance fields
.field protected mTarget:Ljava/lang/String;

.field protected mTargetElement:Lmiui/app/screenelement/ScreenElement;

.field final synthetic this$0:Lmiui/app/screenelement/ButtonScreenElement;


# direct methods
.method protected constructor <init>(Lmiui/app/screenelement/ButtonScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 52
    iput-object p1, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->this$0:Lmiui/app/screenelement/ButtonScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method protected getTarget()Lmiui/app/screenelement/ScreenElement;
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->mTargetElement:Lmiui/app/screenelement/ScreenElement;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->this$0:Lmiui/app/screenelement/ButtonScreenElement;

    iget-object v0, v0, Lmiui/app/screenelement/ButtonScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElement;

    iget-object v1, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->mTargetElement:Lmiui/app/screenelement/ScreenElement;

    .line 59
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->mTargetElement:Lmiui/app/screenelement/ScreenElement;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "ButtonScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find trigger target, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->mTarget:Ljava/lang/String;

    .line 65
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Property;->mTargetElement:Lmiui/app/screenelement/ScreenElement;

    return-object v0
.end method

.method public abstract perform()V
.end method
