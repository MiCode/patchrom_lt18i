.class Lmiui/app/screenelement/Expression$VariableExpression;
.super Lmiui/app/screenelement/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableExpression"
.end annotation


# instance fields
.field private mVar:Lmiui/app/screenelement/Variable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 121
    invoke-direct {p0}, Lmiui/app/screenelement/Expression;-><init>()V

    .line 122
    new-instance v0, Lmiui/app/screenelement/Variable;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/screenelement/Expression$VariableExpression;->mVar:Lmiui/app/screenelement/Variable;

    .line 126
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/Variables;)D
    .locals 3
    .parameter "var"

    .prologue
    .line 130
    iget-object v1, p0, Lmiui/app/screenelement/Expression$VariableExpression;->mVar:Lmiui/app/screenelement/Variable;

    invoke-virtual {v1}, Lmiui/app/screenelement/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/Expression$VariableExpression;->mVar:Lmiui/app/screenelement/Variable;

    invoke-virtual {v2}, Lmiui/app/screenelement/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lmiui/app/screenelement/Variables;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 131
    .local v0, value:Ljava/lang/Double;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method
