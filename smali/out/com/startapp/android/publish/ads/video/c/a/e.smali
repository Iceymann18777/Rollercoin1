.class public Lcom/startapp/android/publish/ads/video/c/a/e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Ljava/lang/String; = "VASTModel"


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/startapp/android/publish/ads/video/c/a/b;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/startapp/android/publish/ads/video/c/a/a/e;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/startapp/android/publish/ads/video/c/a/a/b;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/startapp/android/publish/omsdk/AdVerification;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->i:Lcom/startapp/android/publish/ads/video/c/a/a/b;

    .line 70
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->c(Lorg/w3c/dom/Document;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->d:I

    .line 71
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->b:Ljava/util/HashMap;

    .line 72
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->b(Lorg/w3c/dom/Document;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->c:Ljava/util/List;

    .line 73
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->d(Lorg/w3c/dom/Document;)Lcom/startapp/android/publish/ads/video/c/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->e:Lcom/startapp/android/publish/ads/video/c/a/a/e;

    .line 74
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->e(Lorg/w3c/dom/Document;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->f:Ljava/util/List;

    .line 75
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->f(Lorg/w3c/dom/Document;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->g:Ljava/util/List;

    .line 76
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->g(Lorg/w3c/dom/Document;)I

    move-result v0

    iput v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->h:I

    .line 77
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->h(Lorg/w3c/dom/Document;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->j:Ljava/util/List;

    .line 78
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->i(Lorg/w3c/dom/Document;)Lcom/startapp/android/publish/omsdk/AdVerification;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->k:Lcom/startapp/android/publish/omsdk/AdVerification;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 3

    const-string v0, ":"

    .line 521
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 522
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private a(Lorg/w3c/dom/Document;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/startapp/android/publish/ads/video/c/a/b;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/c;",
            ">;>;"
        }
    .end annotation

    const-string v0, "%"

    .line 127
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "getTrackingUrls"

    invoke-static {v1, v2, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    :try_start_17
    const-string v3, "/VASTS/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/InLine/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/Linear/TrackingEvents/Tracking|/VASTS/VAST/Ad/Wrapper/Creatives/Creative/NonLinearAds/TrackingEvents/Tracking"

    .line 134
    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v2, v3, p1, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/NodeList;

    if-eqz p1, :cond_b0

    const/4 v2, 0x0

    .line 136
    :goto_24
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_b0

    .line 137
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 138
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v5, "event"

    .line 140
    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3c} :catch_b1

    .line 143
    :try_start_3c
    invoke-static {v5}, Lcom/startapp/android/publish/ads/video/c/a/b;->valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/ads/video/c/a/b;

    move-result-object v5
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_40} :catch_90
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_40} :catch_b1

    .line 149
    :try_start_40
    invoke-static {v3}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x1

    const-string v7, "offset"

    .line 152
    invoke-interface {v4, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_72

    .line 154
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_51} :catch_b1

    if-eqz v4, :cond_72

    .line 157
    :try_start_53
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    const-string v7, ""

    .line 158
    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 159
    iget v7, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->d:I

    div-int/lit8 v7, v7, 0x64

    mul-int v7, v7, v4

    move v6, v7

    goto :goto_72

    .line 161
    :cond_6b
    invoke-static {v4}, Lcom/startapp/android/publish/ads/video/c/a/e;->a(Ljava/lang/String;)I

    move-result v4
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_6f} :catch_72

    mul-int/lit16 v4, v4, 0x3e8

    move v6, v4

    .line 170
    :catch_72
    :cond_72
    :goto_72
    :try_start_72
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 171
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_87

    .line 173
    :cond_7f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_87
    new-instance v5, Lcom/startapp/android/publish/ads/video/c/a/a/c;

    invoke-direct {v5, v3, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    .line 145
    :catch_90
    sget-object v3, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not valid. Skipping it."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_ac} :catch_b1

    :goto_ac
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_24

    :cond_b0
    return-object v1

    :catch_b1
    move-exception p1

    .line 182
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "getListFromXPath"

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :try_start_d
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    .line 438
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v1, p2, p1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/NodeList;

    if-eqz p1, :cond_34

    const/4 p2, 0x0

    .line 440
    :goto_20
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge p2, v1, :cond_34

    .line 441
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_31} :catch_35

    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_34
    return-object v0

    :catch_35
    move-exception p1

    .line 446
    sget-object p2, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lorg/w3c/dom/Document;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;",
            ">;"
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "getMediaFiles"

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_16
    const-string v3, "//MediaFile"

    .line 197
    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v3, p1, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/NodeList;

    if-eqz p1, :cond_f7

    const/4 v1, 0x0

    .line 199
    :goto_23
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_f7

    .line 200
    new-instance v3, Lcom/startapp/android/publish/ads/video/c/a/a/b;

    invoke-direct {v3}, Lcom/startapp/android/publish/ads/video/c/a/a/b;-><init>()V

    .line 201
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 202
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "apiFramework"

    .line 204
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_40

    move-object v6, v2

    goto :goto_44

    .line 205
    :cond_40
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    :goto_44
    invoke-virtual {v3, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->e(Ljava/lang/String;)V

    const-string v6, "bitrate"

    .line 207
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_51

    move-object v6, v2

    goto :goto_59

    .line 208
    :cond_51
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    :goto_59
    invoke-virtual {v3, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a(Ljava/lang/Integer;)V

    const-string v6, "delivery"

    .line 210
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_66

    move-object v6, v2

    goto :goto_6a

    .line 211
    :cond_66
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    :goto_6a
    invoke-virtual {v3, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->c(Ljava/lang/String;)V

    const-string v6, "height"

    .line 213
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_77

    move-object v6, v2

    goto :goto_7f

    .line 214
    :cond_77
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    :goto_7f
    invoke-virtual {v3, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->c(Ljava/lang/Integer;)V

    const-string v6, "width"

    .line 216
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_8c

    move-object v6, v2

    goto :goto_94

    .line 217
    :cond_8c
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    :goto_94
    invoke-virtual {v3, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->b(Ljava/lang/Integer;)V

    const-string v6, "id"

    .line 219
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_a1

    move-object v6, v2

    goto :goto_a5

    .line 220
    :cond_a1
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    :goto_a5
    invoke-virtual {v3, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->b(Ljava/lang/String;)V

    const-string v6, "maintainAspectRatio"

    .line 222
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_b2

    move-object v6, v2

    goto :goto_ba

    .line 223
    :cond_b2
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    :goto_ba
    invoke-virtual {v3, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->b(Ljava/lang/Boolean;)V

    const-string v6, "scalable"

    .line 225
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_c7

    move-object v6, v2

    goto :goto_cf

    .line 226
    :cond_c7
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    :goto_cf
    invoke-virtual {v3, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a(Ljava/lang/Boolean;)V

    const-string v6, "type"

    .line 228
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-nez v5, :cond_dc

    move-object v5, v2

    goto :goto_e0

    .line 229
    :cond_dc
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    :goto_e0
    invoke-virtual {v3, v5}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->d(Ljava/lang/String;)V

    .line 231
    invoke-static {v4}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {v3, v4}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->a(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v3}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->f()Z

    move-result v4

    if-eqz v4, :cond_f3

    .line 235
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_f3} :catch_f8

    :cond_f3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_23

    :cond_f7
    return-object v0

    :catch_f8
    move-exception p1

    .line 240
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private c(Lorg/w3c/dom/Document;)I
    .registers 5

    .line 248
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "getDuration"

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    :try_start_10
    const-string v1, "//Duration"

    .line 253
    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v1, p1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/NodeList;

    if-eqz p1, :cond_3b

    const/4 v0, 0x0

    .line 255
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_3b

    .line 256
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 257
    invoke-static {p1}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/android/publish/ads/video/c/a/e;->a(Ljava/lang/String;)I

    move-result p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_30

    return p1

    :catch_30
    move-exception p1

    .line 261
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    const p1, 0x7fffffff

    return p1
.end method

.method private d(Lorg/w3c/dom/Document;)Lcom/startapp/android/publish/ads/video/c/a/a/e;
    .registers 10

    .line 268
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "getVideoClicks"

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    new-instance v0, Lcom/startapp/android/publish/ads/video/c/a/a/e;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/video/c/a/a/e;-><init>()V

    .line 273
    :try_start_d
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    const-string v2, "//VideoClicks"

    .line 274
    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v2, p1, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/NodeList;

    if-eqz p1, :cond_75

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 276
    :goto_23
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_75

    .line 277
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 279
    :goto_32
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_72

    .line 280
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 281
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-static {v5}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ClickTracking"

    .line 284
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 285
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/c/a/a/e;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_54
    const-string v7, "ClickThrough"

    .line 286
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 287
    invoke-virtual {v0, v5}, Lcom/startapp/android/publish/ads/video/c/a/a/e;->a(Ljava/lang/String;)V

    goto :goto_6f

    :cond_60
    const-string v7, "CustomClick"

    .line 288
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 289
    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/video/c/a/a/e;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6f} :catch_76

    :cond_6f
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_75
    return-object v0

    :catch_76
    move-exception p1

    .line 296
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Lorg/w3c/dom/Document;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "getImpressions"

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "//Impression"

    .line 306
    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/ads/video/c/a/e;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private f(Lorg/w3c/dom/Document;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "getErrorUrl"

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "//Error"

    .line 312
    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/ads/video/c/a/e;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private g(Lorg/w3c/dom/Document;)I
    .registers 8

    const-string v0, "skipoffset"

    .line 316
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v2, 0x3

    const-string v3, "getSkipOffset"

    invoke-static {v1, v2, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    const/4 v2, 0x6

    :try_start_13
    const-string v3, "//Linear"

    .line 321
    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v3, p1, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/NodeList;

    if-eqz p1, :cond_60

    const/4 v1, 0x0

    .line 323
    :goto_20
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_56

    if-ge v1, v3, :cond_60

    .line 325
    :try_start_26
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 326
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/android/publish/ads/video/c/a/e;->a(Ljava/lang/String;)I

    move-result p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_48} :catch_49

    return p1

    :catch_49
    move-exception v3

    .line 329
    :try_start_4a
    sget-object v4, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5, v3}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_56

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :catch_56
    move-exception p1

    .line 335
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_60
    const p1, 0x7fffffff

    return p1
.end method

.method private h(Lorg/w3c/dom/Document;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/a;",
            ">;"
        }
    .end annotation

    .line 342
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "getIcons"

    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_16
    const-string v3, "//Icon"

    .line 349
    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v1, v3, p1, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/NodeList;

    if-eqz p1, :cond_193

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 351
    :goto_24
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_193

    .line 352
    new-instance v4, Lcom/startapp/android/publish/ads/video/c/a/a/a;

    invoke-direct {v4}, Lcom/startapp/android/publish/ads/video/c/a/a/a;-><init>()V

    .line 353
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 354
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    const-string v7, "program"

    .line 356
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_41

    move-object v7, v2

    goto :goto_45

    .line 357
    :cond_41
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    :goto_45
    invoke-virtual {v4, v7}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->a(Ljava/lang/String;)V

    const-string v7, "width"

    .line 359
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_52

    move-object v7, v2

    goto :goto_5a

    .line 360
    :cond_52
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    :goto_5a
    invoke-virtual {v4, v7}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->a(Ljava/lang/Integer;)V

    const-string v7, "height"

    .line 362
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_67

    move-object v7, v2

    goto :goto_6f

    .line 363
    :cond_67
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    :goto_6f
    invoke-virtual {v4, v7}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->b(Ljava/lang/Integer;)V

    const-string v7, "xPosition"

    .line 365
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_7c

    move-object v7, v2

    goto :goto_84

    .line 366
    :cond_7c
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    :goto_84
    invoke-virtual {v4, v7}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->c(Ljava/lang/Integer;)V

    const-string v7, "yPosition"

    .line 368
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_91

    move-object v7, v2

    goto :goto_99

    .line 369
    :cond_91
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    :goto_99
    invoke-virtual {v4, v7}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->d(Ljava/lang/Integer;)V

    const-string v7, "duration"

    .line 371
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_a6

    move-object v7, v2

    goto :goto_ae

    .line 372
    :cond_a6
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    :goto_ae
    invoke-virtual {v4, v7}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->e(Ljava/lang/Integer;)V

    const-string v7, "offset"

    .line 374
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_bb

    move-object v7, v2

    goto :goto_c3

    .line 375
    :cond_bb
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    :goto_c3
    invoke-virtual {v4, v7}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->f(Ljava/lang/Integer;)V

    const-string v7, "apiFramework"

    .line 377
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-nez v7, :cond_d0

    move-object v7, v2

    goto :goto_d4

    .line 378
    :cond_d0
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    :goto_d4
    invoke-virtual {v4, v7}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->b(Ljava/lang/String;)V

    const-string v7, "pxratio"

    .line 380
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_e1

    move-object v6, v2

    goto :goto_e9

    .line 381
    :cond_e1
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    :goto_e9
    invoke-virtual {v4, v6}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->g(Ljava/lang/Integer;)V

    .line 383
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    .line 384
    :goto_f1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_186

    .line 385
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 386
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 387
    invoke-static {v8}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "IconClicks"

    .line 389
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_140

    .line 390
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v9, 0x0

    .line 391
    :goto_110
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_182

    .line 392
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 393
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .line 394
    invoke-static {v10}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "ClickThrough"

    .line 396
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12e

    .line 397
    invoke-virtual {v4, v10}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->c(Ljava/lang/String;)V

    goto :goto_13d

    :cond_12e
    const-string v12, "IconViewTracking"

    .line 398
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 399
    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->g()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13d
    :goto_13d
    add-int/lit8 v9, v9, 0x1

    goto :goto_110

    :cond_140
    const-string v10, "ClickTracking"

    .line 402
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_150

    .line 403
    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->f()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_182

    :cond_150
    const-string v10, "StaticResource"

    .line 404
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_182

    .line 405
    new-instance v9, Lcom/startapp/android/publish/ads/video/c/a/a/d;

    invoke-direct {v9}, Lcom/startapp/android/publish/ads/video/c/a/a/d;-><init>()V

    .line 406
    invoke-virtual {v9, v8}, Lcom/startapp/android/publish/ads/video/c/a/a/d;->b(Ljava/lang/String;)V

    .line 408
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v10, "creativeType"

    .line 409
    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_16e

    move-object v8, v2

    goto :goto_172

    .line 410
    :cond_16e
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    :goto_172
    invoke-virtual {v9, v8}, Lcom/startapp/android/publish/ads/video/c/a/a/d;->a(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v9}, Lcom/startapp/android/publish/ads/video/c/a/a/d;->a()Z

    move-result v8

    if-eqz v8, :cond_182

    .line 413
    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->e()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_182
    :goto_182
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_f1

    .line 418
    :cond_186
    invoke-virtual {v4}, Lcom/startapp/android/publish/ads/video/c/a/a/a;->h()Z

    move-result v5

    if-eqz v5, :cond_18f

    .line 419
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_18f} :catch_194

    :cond_18f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_24

    :cond_193
    return-object v0

    :catch_194
    move-exception p1

    .line 424
    sget-object v0, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private i(Lorg/w3c/dom/Document;)Lcom/startapp/android/publish/omsdk/AdVerification;
    .registers 18

    const-string v0, "vendor"

    .line 456
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_b
    const-string v3, "//AdVerifications"

    .line 459
    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v5, p1

    invoke-interface {v1, v3, v5, v4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/NodeList;

    if-eqz v1, :cond_e3

    .line 461
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 462
    :goto_1f
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_cb

    .line 463
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 465
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v7, 0x0

    .line 466
    :goto_2e
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_c7

    .line 467
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 468
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Verification"

    .line 471
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c3

    const-string v9, ""

    .line 477
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    if-eqz v10, :cond_5b

    .line 478
    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_5b

    .line 479
    invoke-interface {v10, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    goto :goto_5c

    :cond_5b
    move-object v10, v2

    .line 482
    :goto_5c
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    move-object v12, v2

    move-object v13, v12

    const/4 v11, 0x0

    .line 483
    :goto_63
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v11, v14, :cond_a1

    .line 484
    invoke-interface {v8, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 485
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    const-string v4, "JavaScriptResource"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 486
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v12, "apiFramework"

    invoke-interface {v4, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_89

    .line 488
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 490
    :cond_89
    invoke-static {v14}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    goto :goto_9e

    .line 491
    :cond_8e
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v15, "VerificationParameters"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 492
    invoke-static {v14}, Lcom/startapp/android/publish/adsCommon/p;->b(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    :cond_9e
    :goto_9e
    add-int/lit8 v11, v11, 0x1

    goto :goto_63

    .line 496
    :cond_a1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c3

    .line 497
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c3

    const-string v4, "omid"

    .line 498
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 499
    new-instance v4, Lcom/startapp/android/publish/omsdk/VerificationDetails;

    invoke-direct {v4, v10, v12, v13}, Lcom/startapp/android/publish/omsdk/VerificationDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2e

    :cond_c7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1f

    .line 507
    :cond_cb
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    .line 508
    new-instance v0, Lcom/startapp/android/publish/omsdk/AdVerification;

    .line 509
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/startapp/android/publish/omsdk/VerificationDetails;

    .line 508
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/startapp/android/publish/omsdk/VerificationDetails;

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/omsdk/AdVerification;-><init>([Lcom/startapp/android/publish/omsdk/VerificationDetails;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e2} :catch_e4

    move-object v2, v0

    :cond_e3
    return-object v2

    :catch_e4
    move-exception v0

    .line 513
    sget-object v1, Lcom/startapp/android/publish/ads/video/c/a/e;->a:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v0}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/startapp/android/publish/ads/video/c/a/b;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/c;",
            ">;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Lcom/startapp/android/publish/ads/video/c/a/c;)Z
    .registers 2

    .line 82
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/video/c/b/a;->a(Lcom/startapp/android/publish/ads/video/c/a/e;Lcom/startapp/android/publish/ads/video/c/a/c;)Lcom/startapp/android/publish/ads/video/c/a/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->i:Lcom/startapp/android/publish/ads/video/c/a/a/b;

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()Lcom/startapp/android/publish/ads/video/c/a/a/e;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->e:Lcom/startapp/android/publish/ads/video/c/a/a/e;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->f:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->g:Ljava/util/List;

    return-object v0
.end method

.method public f()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->h:I

    return v0
.end method

.method public g()Lcom/startapp/android/publish/ads/video/c/a/a/b;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->i:Lcom/startapp/android/publish/ads/video/c/a/a/b;

    return-object v0
.end method

.method public h()Lcom/startapp/android/publish/omsdk/AdVerification;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/e;->k:Lcom/startapp/android/publish/omsdk/AdVerification;

    return-object v0
.end method
