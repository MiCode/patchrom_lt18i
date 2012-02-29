.class Landroid/telephony/KoreanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "KoreanPhoneNumberFormatter.java"


# static fields
.field private static final FORMAT_MIN_LENGTH:I = 0x3

.field private static final KOREA_COMMON_NUMBER:I = 0x1

.field static final KOREA_COUNTRY_CODE:Ljava/lang/String; = "+82"

.field private static final KOREA_SEOUL_LANDLINE:I = 0x3

.field private static final KOREA_SPECIAL_NUMBER:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteChar(Landroid/text/Editable;C)V
    .locals 2
    .parameter "text"
    .parameter "theChar"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 157
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 158
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 10
    .parameter "text"

    .prologue
    .line 52
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 53
    .local v2, textLen:I
    const/4 v0, 0x3

    if-ge v2, v0, :cond_0

    move p0, v2

    .line 152
    .end local v2           #textLen:I
    .local p0, textLen:I
    :goto_0
    return-void

    .line 60
    .restart local v2       #textLen:I
    .local p0, text:Landroid/text/Editable;
    :cond_0
    const-string v0, "+82"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 61
    .local v0, prefixLen:I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, saved:Ljava/lang/String;
    const/4 v1, 0x0

    .line 63
    .local v1, rootIndex:I
    if-le v2, v0, :cond_12

    const-string v2, "+82"

    .end local v2           #textLen:I
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 65
    move v0, v0

    .end local v1           #rootIndex:I
    .local v0, rootIndex:I
    move v6, v0

    .line 69
    .end local v0           #rootIndex:I
    .local v6, rootIndex:I
    :goto_1
    const/16 v0, 0x2d

    invoke-static {p0, v0}, Landroid/telephony/KoreanPhoneNumberFormatter;->deleteChar(Landroid/text/Editable;C)V

    .line 71
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v8

    .line 72
    .local v8, textLen:I
    sub-int v2, v8, v6

    .line 73
    .local v2, digiLength:I
    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 74
    .local v1, dashPositions:[I
    const/4 v0, 0x0

    .line 75
    .local v0, numDashes:I
    const/4 v4, 0x0

    .line 76
    .local v4, numDigits:I
    const/4 v5, 0x1

    .line 79
    .local v5, numType:I
    if-lez v6, :cond_11

    .line 80
    add-int/lit8 v3, v0, 0x1

    .end local v0           #numDashes:I
    .local v3, numDashes:I
    aput v6, v1, v0

    .line 83
    :goto_2
    move v0, v6

    .local v0, i:I
    move v6, v5

    .end local v5           #numType:I
    .local v6, numType:I
    move v5, v4

    .end local v4           #numDigits:I
    .local v5, numDigits:I
    move v4, v3

    .end local v3           #numDashes:I
    .local v4, numDashes:I
    move v3, v0

    .end local v0           #i:I
    .local v3, i:I
    :goto_3
    if-ge v3, v8, :cond_e

    .line 84
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 85
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    invoke-interface {p0, v0, v8, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .end local v0           #c:C
    move p0, v8

    .line 143
    .end local v8           #textLen:I
    .local p0, textLen:I
    goto :goto_0

    .line 88
    .restart local v0       #c:C
    .restart local v8       #textLen:I
    .local p0, text:Landroid/text/Editable;
    :pswitch_0
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1

    .end local v0           #c:C
    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    .line 89
    const/4 v6, 0x3

    .line 90
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    add-int/lit8 v9, v3, 0x1

    aput v9, v1, v4

    .line 91
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDigits:I
    .local v4, numDigits:I
    move v5, v4

    .end local v4           #numDigits:I
    .restart local v5       #numDigits:I
    move v4, v0

    .line 83
    .end local v0           #numDashes:I
    .local v4, numDashes:I
    :goto_4
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    goto :goto_3

    .line 93
    :cond_1
    if-nez v5, :cond_2

    .line 94
    const/4 v6, 0x2

    .line 95
    add-int/lit8 v0, v5, 0x1

    .end local v5           #numDigits:I
    .local v0, numDigits:I
    move v5, v0

    .line 96
    .end local v0           #numDigits:I
    .restart local v5       #numDigits:I
    goto :goto_4

    .line 100
    :cond_2
    :pswitch_1
    if-nez v5, :cond_3

    .line 101
    const/4 v6, 0x1

    .line 102
    add-int/lit8 v0, v5, 0x1

    .end local v5           #numDigits:I
    .restart local v0       #numDigits:I
    move v5, v0

    .line 103
    .end local v0           #numDigits:I
    .restart local v5       #numDigits:I
    goto :goto_4

    .line 114
    :cond_3
    :pswitch_2
    if-nez v5, :cond_4

    .line 115
    const/4 v6, 0x2

    .line 116
    add-int/lit8 v0, v5, 0x1

    .end local v5           #numDigits:I
    .restart local v0       #numDigits:I
    move v5, v0

    .line 117
    .end local v0           #numDigits:I
    .restart local v5       #numDigits:I
    goto :goto_4

    .line 121
    :cond_4
    const/4 v0, 0x3

    if-ne v6, v0, :cond_7

    .line 122
    const/4 v0, 0x5

    if-ne v5, v0, :cond_5

    const/16 v0, 0xa

    if-lt v2, v0, :cond_6

    :cond_5
    const/4 v0, 0x6

    if-ne v5, v0, :cond_10

    const/16 v0, 0xa

    if-lt v2, v0, :cond_10

    .line 124
    :cond_6
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    aput v3, v1, v4

    .line 138
    :goto_5
    add-int/lit8 v4, v5, 0x1

    .end local v5           #numDigits:I
    .local v4, numDigits:I
    move v5, v4

    .end local v4           #numDigits:I
    .restart local v5       #numDigits:I
    move v4, v0

    .line 139
    .end local v0           #numDashes:I
    .local v4, numDashes:I
    goto :goto_4

    .line 126
    :cond_7
    const/4 v0, 0x2

    if-ne v6, v0, :cond_b

    .line 127
    const/4 v0, 0x3

    if-ne v5, v0, :cond_8

    const/16 v0, 0x8

    if-lt v2, v0, :cond_a

    :cond_8
    const/4 v0, 0x4

    if-eq v5, v0, :cond_9

    const/16 v0, 0x8

    if-ne v5, v0, :cond_10

    :cond_9
    const/16 v0, 0x8

    if-lt v2, v0, :cond_10

    .line 129
    :cond_a
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v0       #numDashes:I
    aput v3, v1, v4

    goto :goto_5

    .line 132
    .end local v0           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_b
    const/4 v0, 0x3

    if-eq v5, v0, :cond_d

    const/4 v0, 0x6

    if-ne v5, v0, :cond_c

    const/16 v0, 0xb

    if-lt v2, v0, :cond_d

    :cond_c
    const/4 v0, 0x7

    if-ne v5, v0, :cond_10

    const/16 v0, 0xb

    if-lt v2, v0, :cond_10

    .line 135
    :cond_d
    add-int/lit8 v0, v4, 0x1

    .end local v4           #numDashes:I
    .restart local v0       #numDashes:I
    aput v3, v1, v4

    goto :goto_5

    .line 148
    .end local v0           #numDashes:I
    .restart local v4       #numDashes:I
    :cond_e
    const/4 v0, 0x0

    .end local v2           #digiLength:I
    .end local v3           #i:I
    .end local v5           #numDigits:I
    .local v0, i:I
    :goto_6
    if-ge v0, v4, :cond_f

    .line 149
    aget v2, v1, v0

    .line 150
    .local v2, pos:I
    add-int v3, v2, v0

    add-int/2addr v2, v0

    const-string v5, "-"

    .end local v2           #pos:I
    invoke-interface {p0, v3, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move p0, v8

    .line 152
    .end local v8           #textLen:I
    .local p0, textLen:I
    goto/16 :goto_0

    .end local v0           #i:I
    .local v2, digiLength:I
    .restart local v3       #i:I
    .restart local v5       #numDigits:I
    .restart local v8       #textLen:I
    .local p0, text:Landroid/text/Editable;
    :cond_10
    move v0, v4

    .end local v4           #numDashes:I
    .local v0, numDashes:I
    goto :goto_5

    .end local v3           #i:I
    .local v4, numDigits:I
    .local v5, numType:I
    .local v6, rootIndex:I
    :cond_11
    move v3, v0

    .end local v0           #numDashes:I
    .local v3, numDashes:I
    goto/16 :goto_2

    .end local v2           #digiLength:I
    .end local v3           #numDashes:I
    .end local v4           #numDigits:I
    .end local v5           #numType:I
    .end local v6           #rootIndex:I
    .end local v8           #textLen:I
    .local v0, prefixLen:I
    .local v1, rootIndex:I
    :cond_12
    move v6, v1

    .end local v1           #rootIndex:I
    .restart local v6       #rootIndex:I
    goto/16 :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
