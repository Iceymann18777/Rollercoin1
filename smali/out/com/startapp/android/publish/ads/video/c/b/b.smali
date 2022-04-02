.class public final Lcom/startapp/android/publish/ads/video/c/b/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/startapp/android/publish/ads/video/c/a/e;

.field private d:Ljava/lang/StringBuilder;

.field private e:J


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->d:Ljava/lang/StringBuilder;

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->e:J

    .line 38
    iput p1, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->a:I

    .line 39
    iput p2, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->b:I

    return-void
.end method

.method public static a(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1a

    const-string v0, "VAST"

    .line 145
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 146
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x0

    .line 147
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 148
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/p;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 3

    if-eqz p0, :cond_23

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<VASTS>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</VASTS>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/p;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .registers 2

    .line 135
    invoke-static {p0}, Lcom/startapp/android/publish/adsCommon/p;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 137
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    :cond_d
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;I)Lcom/startapp/android/publish/ads/video/c/a/a;
    .registers 13

    .line 74
    iget v0, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->a:I

    const/4 v1, 0x6

    const-string v2, "VASTProcessor"

    if-lt p3, v0, :cond_20

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VAST wrapping exceeded max limit of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->l:Lcom/startapp/android/publish/ads/video/c/a/a;

    return-object p1

    .line 79
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->e:J

    sub-long/2addr v3, v5

    .line 80
    iget v0, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->b:I

    int-to-long v7, v0

    cmp-long v0, v3, v7

    if-lez v0, :cond_4b

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_4b

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VAST wrapping exceeded timeout "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->k:Lcom/startapp/android/publish/ads/video/c/a/a;

    return-object p1

    .line 85
    :cond_4b
    invoke-static {p2}, Lcom/startapp/android/publish/ads/video/c/b/b;->b(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p2

    if-nez p2, :cond_54

    .line 87
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->b:Lcom/startapp/android/publish/ads/video/c/a/a;

    return-object p1

    .line 90
    :cond_54
    invoke-static {p2}, Lcom/startapp/android/publish/ads/video/c/b/b;->a(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-eqz v3, :cond_e0

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-eqz v3, :cond_e0

    if-nez v0, :cond_78

    goto :goto_e0

    .line 94
    :cond_78
    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "VASTAdTagURI"

    .line 97
    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p2

    if-eqz p2, :cond_dd

    .line 98
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_8c

    goto :goto_dd

    .line 103
    :cond_8c
    invoke-interface {p2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    .line 104
    invoke-static {p2}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrapper URL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_a9
    const-string v0, " "

    const-string v3, "%20"

    .line 108
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v3, "User-Agent"

    const-string v5, "-1"

    .line 110
    invoke-static {p1, v3, v5}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {p1, p2, v0, v3, v4}, Lcom/startapp/common/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/startapp/common/a/h$a;

    move-result-object p2

    if-eqz p2, :cond_d1

    .line 111
    invoke-virtual {p2}, Lcom/startapp/common/a/h$a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 112
    invoke-virtual {p2}, Lcom/startapp/common/a/h$a;->a()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/video/c/b/b;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/startapp/android/publish/ads/video/c/a/a;

    move-result-object p1

    return-object p1

    .line 114
    :cond_d1
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->m:Lcom/startapp/android/publish/ads/video/c/a/a;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_d3} :catch_d4

    return-object p1

    :catch_d4
    move-exception p1

    const-string p2, "processXml network"

    .line 117
    invoke-static {v2, v1, p2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->j:Lcom/startapp/android/publish/ads/video/c/a/a;

    return-object p1

    .line 100
    :cond_dd
    :goto_dd
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->a:Lcom/startapp/android/publish/ads/video/c/a/a;

    return-object p1

    .line 92
    :cond_e0
    :goto_e0
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->m:Lcom/startapp/android/publish/ads/video/c/a/a;

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/ads/video/c/a/c;)Lcom/startapp/android/publish/ads/video/c/a/a;
    .registers 7

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->c:Lcom/startapp/android/publish/ads/video/c/a/e;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->e:J

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/android/publish/ads/video/c/b/b;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/startapp/android/publish/ads/video/c/a/a;

    move-result-object p1

    .line 50
    sget-object p2, Lcom/startapp/android/publish/ads/video/c/a/a;->b:Lcom/startapp/android/publish/ads/video/c/a/a;

    const/4 v0, 0x3

    const-string v1, "VASTProcessor"

    if-ne p1, p2, :cond_2c

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "processXml error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->b:Lcom/startapp/android/publish/ads/video/c/a/a;

    return-object p1

    .line 55
    :cond_2c
    iget-object p2, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/startapp/android/publish/ads/video/c/b/b;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p2

    if-nez p2, :cond_4f

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "wrapMergedVastDocWithVasts error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->b:Lcom/startapp/android/publish/ads/video/c/a/a;

    return-object p1

    .line 61
    :cond_4f
    new-instance v2, Lcom/startapp/android/publish/ads/video/c/a/e;

    invoke-direct {v2, p2}, Lcom/startapp/android/publish/ads/video/c/a/e;-><init>(Lorg/w3c/dom/Document;)V

    iput-object v2, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->c:Lcom/startapp/android/publish/ads/video/c/a/e;

    .line 62
    invoke-virtual {v2, p3}, Lcom/startapp/android/publish/ads/video/c/a/e;->a(Lcom/startapp/android/publish/ads/video/c/a/c;)Z

    move-result p2

    if-nez p2, :cond_76

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "validate error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v0, p2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    sget-object p2, Lcom/startapp/android/publish/ads/video/c/a/a;->a:Lcom/startapp/android/publish/ads/video/c/a/a;

    if-ne p1, p2, :cond_76

    .line 65
    sget-object p1, Lcom/startapp/android/publish/ads/video/c/a/a;->r:Lcom/startapp/android/publish/ads/video/c/a/a;

    :cond_76
    return-object p1
.end method

.method public a()Lcom/startapp/android/publish/ads/video/c/a/e;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/b/b;->c:Lcom/startapp/android/publish/ads/video/c/a/e;

    return-object v0
.end method
