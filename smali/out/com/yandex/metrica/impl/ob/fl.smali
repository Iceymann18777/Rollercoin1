.class public Lcom/yandex/metrica/impl/ob/fl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/fl$a;
    }
.end annotation


# instance fields
.field protected final a:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fl;->a:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/yandex/metrica/impl/ob/fu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/yandex/metrica/impl/ob/fu<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->c()[B

    move-result-object p1

    if-eqz p1, :cond_e

    .line 114
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 115
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_e
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/fu;)Lorg/apache/http/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/fu<",
            "*>;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yandex/metrica/impl/ob/fr;
        }
    .end annotation

    .line 1060
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->d()I

    move-result v0

    const-string v1, "Content-Type"

    packed-switch v0, :pswitch_data_ca

    .line 1106
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown request method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1100
    :pswitch_11
    new-instance v0, Lcom/yandex/metrica/impl/ob/fl$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/fl$a;-><init>(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/fl$a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/fl;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/yandex/metrica/impl/ob/fu;)V

    goto/16 :goto_ab

    .line 1098
    :pswitch_26
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 1096
    :pswitch_31
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 1094
    :pswitch_3c
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_ab

    .line 1080
    :pswitch_46
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_ab

    .line 1088
    :pswitch_50
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/fl;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/yandex/metrica/impl/ob/fu;)V

    goto :goto_ab

    .line 1082
    :pswitch_64
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/fl;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/yandex/metrica/impl/ob/fu;)V

    goto :goto_ab

    .line 1078
    :pswitch_78
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_ab

    .line 1065
    :pswitch_82
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->j()[B

    move-result-object v0

    if-eqz v0, :cond_a2

    .line 1067
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1071
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v0, v2

    goto :goto_ab

    .line 1074
    :cond_a2
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 47
    :goto_ab
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/fl;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 49
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fu;->n()I

    move-result p1

    const/16 v2, 0x1388

    .line 53
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fl;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_ca
    .packed-switch -0x1
        :pswitch_82
        :pswitch_78
        :pswitch_64
        :pswitch_50
        :pswitch_46
        :pswitch_3c
        :pswitch_31
        :pswitch_26
        :pswitch_11
    .end packed-switch
.end method
