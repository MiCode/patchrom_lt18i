.class public final Landroid/net/http/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/Headers$HeaderCallback;
    }
.end annotation


# static fields
.field public static final ACCEPT_RANGES:Ljava/lang/String; = "accept-ranges"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONN_CLOSE:I = 0x1

.field public static final CONN_DIRECTIVE:Ljava/lang/String; = "connection"

.field public static final CONN_KEEP_ALIVE:I = 0x2

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LEN:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HASH_ACCEPT_RANGES:I = 0x53476b3b

.field private static final HASH_CACHE_CONTROL:I = -0xc71a9ee

.field private static final HASH_CONN_DIRECTIVE:I = -0x2e3b8122

.field private static final HASH_CONTENT_DISPOSITION:I = -0x4b88f79d

.field private static final HASH_CONTENT_ENCODING:I = 0x7ce07427

.field private static final HASH_CONTENT_LEN:I = -0x4384d946

.field private static final HASH_CONTENT_TYPE:I = 0x2ed4600e

.field private static final HASH_ETAG:I = 0x2fa915

.field private static final HASH_EXPIRES:I = -0x4e0958cc

.field private static final HASH_LAST_MODIFIED:I = 0x8f17c20

.field private static final HASH_LOCATION:I = 0x714f9fb5

.field private static final HASH_PRAGMA:I = -0x3a6d1ac4

.field private static final HASH_PROXY_AUTHENTICATE:I = -0x11fc9c2c

.field private static final HASH_PROXY_CONNECTION:I = 0x110aef9d

.field private static final HASH_REFRESH:I = 0x40b292db

.field private static final HASH_SET_COOKIE:I = 0x49be662f

.field private static final HASH_TRANSFER_ENCODING:I = 0x4bf6b0f5

.field private static final HASH_WWW_AUTHENTICATE:I = -0xe7c74b5

.field private static final HASH_X_PERMITTED_CROSS_DOMAIN_POLICIES:I = -0x5034229e

.field private static final HEADER_COUNT:I = 0x13

.field private static final IDX_ACCEPT_RANGES:I = 0xa

.field private static final IDX_CACHE_CONTROL:I = 0xc

.field private static final IDX_CONN_DIRECTIVE:I = 0x4

.field private static final IDX_CONTENT_DISPOSITION:I = 0x9

.field private static final IDX_CONTENT_ENCODING:I = 0x3

.field private static final IDX_CONTENT_LEN:I = 0x1

.field private static final IDX_CONTENT_TYPE:I = 0x2

.field private static final IDX_ETAG:I = 0xe

.field private static final IDX_EXPIRES:I = 0xb

.field private static final IDX_LAST_MODIFIED:I = 0xd

.field private static final IDX_LOCATION:I = 0x5

.field private static final IDX_PRAGMA:I = 0x10

.field private static final IDX_PROXY_AUTHENTICATE:I = 0x8

.field private static final IDX_PROXY_CONNECTION:I = 0x6

.field private static final IDX_REFRESH:I = 0x11

.field private static final IDX_SET_COOKIE:I = 0xf

.field private static final IDX_TRANSFER_ENCODING:I = 0x0

.field private static final IDX_WWW_AUTHENTICATE:I = 0x7

.field private static final IDX_X_PERMITTED_CROSS_DOMAIN_POLICIES:I = 0x12

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field private static final LOGTAG:Ljava/lang/String; = "Http"

.field public static final NO_CONN_TYPE:I = 0x0

.field public static final NO_CONTENT_LENGTH:J = -0x1L

.field public static final NO_TRANSFER_ENCODING:J = 0x0L

.field public static final PRAGMA:Ljava/lang/String; = "pragma"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "proxy-authenticate"

.field public static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field public static final REFRESH:Ljava/lang/String; = "refresh"

.field public static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "www-authenticate"

.field public static final X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String; = "x-permitted-cross-domain-policies"

.field private static final sHeaderNames:[Ljava/lang/String;


# instance fields
.field private connectionType:I

.field private contentLength:J

.field private cookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraHeaderNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraHeaderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:[Ljava/lang/String;

.field private transferEncoding:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "transfer-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content-length"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content-type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "connection"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "proxy-connection"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "www-authenticate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "proxy-authenticate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "content-disposition"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accept-ranges"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cache-control"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "last-modified"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "etag"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "set-cookie"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "pragma"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "refresh"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "x-permitted-cross-domain-policies"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/http/Headers;->sHeaderNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    .line 132
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/http/Headers;->transferEncoding:J

    .line 161
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/http/Headers;->contentLength:J

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    .line 163
    return-void
.end method

.method private setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V
    .locals 1
    .parameter "buffer"
    .parameter "pos"

    .prologue
    .line 467
    const-string v0, "Close"

    invoke-static {p1, p2, v0}, Landroid/net/http/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const-string v0, "Keep-Alive"

    invoke-static {p1, p2, v0}, Landroid/net/http/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    goto :goto_0
.end method


# virtual methods
.method public getAcceptRanges()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getConnectionType()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Landroid/net/http/Headers;->connectionType:I

    return v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Landroid/net/http/Headers;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHeaders(Landroid/net/http/Headers$HeaderCallback;)V
    .locals 5
    .parameter "hcb"

    .prologue
    .line 448
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v3, 0x13

    if-ge v2, v3, :cond_1

    .line 449
    iget-object v3, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aget-object v1, v3, v2

    .line 450
    .local v1, h:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 451
    sget-object v3, Landroid/net/http/Headers;->sHeaderNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {p1, v3, v1}, Landroid/net/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    .end local v1           #h:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 455
    .local v0, extraLen:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 460
    iget-object v3, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/net/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    :cond_2
    return-void
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPragma()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRefresh()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSetCookie()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransferEncoding()J
    .locals 2

    .prologue
    .line 317
    iget-wide v0, p0, Landroid/net/http/Headers;->transferEncoding:J

    return-wide v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 12
    .parameter "buffer"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/16 v8, 0xc

    .line 166
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Landroid/net/http/CharArrayBuffers;->setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v3

    .line 167
    .local v3, pos:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p1, v6, v3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    add-int/lit8 v3, v3, 0x1

    .line 176
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, val:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 311
    iget-object v5, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v5, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :sswitch_0
    const-string/jumbo v5, "transfer-encoding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aput-object v4, v5, v6

    .line 185
    sget-object v5, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    new-instance v6, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    invoke-direct {v6, v3, v7}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {v5, p1, v6}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 190
    .local v0, encodings:[Lorg/apache/http/HeaderElement;
    array-length v1, v0

    .line 191
    .local v1, len:I
    const-string v5, "identity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 192
    iput-wide v10, p0, Landroid/net/http/Headers;->transferEncoding:J

    goto :goto_0

    .line 193
    :cond_2
    if-lez v1, :cond_3

    const-string v5, "chunked"

    sub-int v6, v1, v9

    aget-object v6, v0, v6

    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 196
    const-wide/16 v5, -0x2

    iput-wide v5, p0, Landroid/net/http/Headers;->transferEncoding:J

    goto :goto_0

    .line 198
    :cond_3
    iput-wide v10, p0, Landroid/net/http/Headers;->transferEncoding:J

    goto :goto_0

    .line 203
    .end local v0           #encodings:[Lorg/apache/http/HeaderElement;
    .end local v1           #len:I
    :sswitch_1
    const-string v5, "content-length"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aput-object v4, v5, v9

    .line 206
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/http/Headers;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v5

    goto :goto_0

    .line 216
    :sswitch_2
    const-string v5, "content-type"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 221
    :sswitch_3
    const-string v5, "content-encoding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 226
    :sswitch_4
    const-string v5, "connection"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v4, v5, v6

    .line 228
    invoke-direct {p0, p1, v3}, Landroid/net/http/Headers;->setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    .line 232
    :sswitch_5
    const-string v5, "location"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v6, 0x5

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 237
    :sswitch_6
    const-string v5, "proxy-connection"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v6, 0x6

    aput-object v4, v5, v6

    .line 239
    invoke-direct {p0, p1, v3}, Landroid/net/http/Headers;->setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    .line 243
    :sswitch_7
    const-string/jumbo v5, "www-authenticate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v6, 0x7

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 248
    :sswitch_8
    const-string v5, "proxy-authenticate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0x8

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 253
    :sswitch_9
    const-string v5, "content-disposition"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0x9

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 258
    :sswitch_a
    const-string v5, "accept-ranges"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0xa

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 263
    :sswitch_b
    const-string v5, "expires"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 268
    :sswitch_c
    const-string v5, "cache-control"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aget-object v5, v5, v8

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aget-object v7, v6, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v8

    goto/16 :goto_0

    .line 275
    :cond_4
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aput-object v4, v5, v8

    goto/16 :goto_0

    .line 280
    :sswitch_d
    const-string v5, "last-modified"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 281
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0xd

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 285
    :sswitch_e
    const-string v5, "etag"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0xe

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 290
    :sswitch_f
    const-string v5, "set-cookie"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0xf

    aput-object v4, v5, v6

    .line 292
    iget-object v5, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 296
    :sswitch_10
    const-string v5, "pragma"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 297
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0x10

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 301
    :sswitch_11
    const-string v5, "refresh"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0x11

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 306
    :sswitch_12
    const-string/jumbo v5, "x-permitted-cross-domain-policies"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    iget-object v5, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v6, 0x12

    aput-object v4, v5, v6

    goto/16 :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5034229e -> :sswitch_12
        -0x4e0958cc -> :sswitch_b
        -0x4b88f79d -> :sswitch_9
        -0x4384d946 -> :sswitch_1
        -0x3a6d1ac4 -> :sswitch_10
        -0x2e3b8122 -> :sswitch_4
        -0x11fc9c2c -> :sswitch_8
        -0xe7c74b5 -> :sswitch_7
        -0xc71a9ee -> :sswitch_c
        0x2fa915 -> :sswitch_e
        0x8f17c20 -> :sswitch_d
        0x110aef9d -> :sswitch_6
        0x2ed4600e -> :sswitch_2
        0x40b292db -> :sswitch_11
        0x49be662f -> :sswitch_f
        0x4bf6b0f5 -> :sswitch_0
        0x53476b3b -> :sswitch_a
        0x714f9fb5 -> :sswitch_5
        0x7ce07427 -> :sswitch_3
    .end sparse-switch
.end method

.method public setAcceptRanges(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 417
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    .line 418
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 425
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    .line 426
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 413
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 414
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 397
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 398
    return-void
.end method

.method public setContentLength(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 389
    iput-wide p1, p0, Landroid/net/http/Headers;->contentLength:J

    .line 390
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 393
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 394
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 433
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object p1, v0, v1

    .line 434
    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 421
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 422
    return-void
.end method

.method public setLastModified(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 429
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object p1, v0, v1

    .line 430
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 401
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 402
    return-void
.end method

.method public setProxyAuthenticate(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 409
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    .line 410
    return-void
.end method

.method public setWwwAuthenticate(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 406
    return-void
.end method

.method public setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 437
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object p1, v0, v1

    .line 438
    return-void
.end method
