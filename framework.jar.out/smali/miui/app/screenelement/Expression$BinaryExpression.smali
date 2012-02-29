.class Lmiui/app/screenelement/Expression$BinaryExpression;
.super Lmiui/app/screenelement/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinaryExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/Expression$BinaryExpression$Ope;
    }
.end annotation


# instance fields
.field private mExp1:Lmiui/app/screenelement/Expression;

.field private mExp2:Lmiui/app/screenelement/Expression;

.field private mOpe:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/Expression;Lmiui/app/screenelement/Expression;Ljava/lang/String;)V
    .locals 3
    .parameter "exp1"
    .parameter "exp2"
    .parameter "op"

    .prologue
    .line 223
    invoke-direct {p0}, Lmiui/app/screenelement/Expression;-><init>()V

    .line 196
    sget-object v0, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    iput-object v0, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    .line 224
    iput-object p1, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/Expression;

    .line 225
    iput-object p2, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/Expression;

    .line 226
    invoke-static {p3}, Lmiui/app/screenelement/Expression$BinaryExpression;->parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    .line 227
    iget-object v0, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    sget-object v1, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    if-ne v0, v1, :cond_0

    .line 228
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    return-void
.end method

.method public static parseOperator(Ljava/lang/String;)Lmiui/app/screenelement/Expression$BinaryExpression$Ope;
    .locals 1
    .parameter "op"

    .prologue
    .line 208
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->ADD:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    .line 220
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->MIN:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 212
    :cond_1
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    sget-object v0, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->MUL:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 214
    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    sget-object v0, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->DIV:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 216
    :cond_3
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    sget-object v0, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->MOD:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 220
    :cond_4
    sget-object v0, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->INVALID:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/Variables;)D
    .locals 4
    .parameter "var"

    .prologue
    .line 234
    sget-object v0, Lmiui/app/screenelement/Expression$1;->$SwitchMap$miui$app$screenelement$Expression$BinaryExpression$Ope:[I

    iget-object v1, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mOpe:Lmiui/app/screenelement/Expression$BinaryExpression$Ope;

    invoke-virtual {v1}, Lmiui/app/screenelement/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    const-string v0, "Expression"

    const-string v1, "fail to evalute BinaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 236
    :pswitch_0
    iget-object v0, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v0, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v0, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v0, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0

    .line 244
    :pswitch_4
    iget-object v0, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp1:Lmiui/app/screenelement/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Lmiui/app/screenelement/Expression$BinaryExpression;->mExp2:Lmiui/app/screenelement/Expression;

    invoke-virtual {v2, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v2

    rem-double/2addr v0, v2

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
