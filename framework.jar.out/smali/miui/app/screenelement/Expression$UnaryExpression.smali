.class Lmiui/app/screenelement/Expression$UnaryExpression;
.super Lmiui/app/screenelement/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnaryExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/Expression$UnaryExpression$Ope;
    }
.end annotation


# instance fields
.field private mExp:Lmiui/app/screenelement/Expression;

.field private mOpe:Lmiui/app/screenelement/Expression$UnaryExpression$Ope;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/Expression;Ljava/lang/String;)V
    .locals 3
    .parameter "exp"
    .parameter "op"

    .prologue
    .line 162
    invoke-direct {p0}, Lmiui/app/screenelement/Expression;-><init>()V

    .line 155
    sget-object v0, Lmiui/app/screenelement/Expression$UnaryExpression$Ope;->INVALID:Lmiui/app/screenelement/Expression$UnaryExpression$Ope;

    iput-object v0, p0, Lmiui/app/screenelement/Expression$UnaryExpression;->mOpe:Lmiui/app/screenelement/Expression$UnaryExpression$Ope;

    .line 163
    iput-object p1, p0, Lmiui/app/screenelement/Expression$UnaryExpression;->mExp:Lmiui/app/screenelement/Expression;

    .line 164
    invoke-static {p2}, Lmiui/app/screenelement/Expression$UnaryExpression;->parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/Expression$UnaryExpression$Ope;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/Expression$UnaryExpression;->mOpe:Lmiui/app/screenelement/Expression$UnaryExpression$Ope;

    .line 165
    iget-object v0, p0, Lmiui/app/screenelement/Expression$UnaryExpression;->mOpe:Lmiui/app/screenelement/Expression$UnaryExpression$Ope;

    sget-object v1, Lmiui/app/screenelement/Expression$UnaryExpression$Ope;->INVALID:Lmiui/app/screenelement/Expression$UnaryExpression$Ope;

    if-ne v0, v1, :cond_0

    .line 166
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    return-void
.end method

.method public static parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/Expression$UnaryExpression$Ope;
    .locals 1
    .parameter "op"

    .prologue
    .line 171
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lmiui/app/screenelement/Expression$UnaryExpression$Ope;->MIN:Lmiui/app/screenelement/Expression$UnaryExpression$Ope;

    .line 175
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/app/screenelement/Expression$UnaryExpression$Ope;->INVALID:Lmiui/app/screenelement/Expression$UnaryExpression$Ope;

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/Variables;)D
    .locals 4
    .parameter "var"

    .prologue
    .line 180
    sget-object v0, Lmiui/app/screenelement/Expression$1;->$SwitchMap$miui$app$screenelement$Expression$UnaryExpression$Ope:[I

    iget-object v1, p0, Lmiui/app/screenelement/Expression$UnaryExpression;->mOpe:Lmiui/app/screenelement/Expression$UnaryExpression$Ope;

    invoke-virtual {v1}, Lmiui/app/screenelement/Expression$UnaryExpression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 185
    const-string v0, "Expression"

    const-string v1, "fail to evalute UnaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lmiui/app/screenelement/Expression$UnaryExpression;->mExp:Lmiui/app/screenelement/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 182
    :pswitch_0
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lmiui/app/screenelement/Expression$UnaryExpression;->mExp:Lmiui/app/screenelement/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
