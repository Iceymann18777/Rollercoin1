.class public Lcom/mopub/mobileads/VastResourceXmlManager;
.super Ljava/lang/Object;
.source "VastResourceXmlManager.java"


# static fields
.field public static final CREATIVE_TYPE:Ljava/lang/String; = "creativeType"

.field public static final HTML_RESOURCE:Ljava/lang/String; = "HTMLResource"

.field public static final IFRAME_RESOURCE:Ljava/lang/String; = "IFrameResource"

.field public static final STATIC_RESOURCE:Ljava/lang/String; = "StaticResource"


# instance fields
.field private final mResourceNode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    iput-object p1, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method getHTMLResource()Ljava/lang/String;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    const-string v1, "HTMLResource"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIFrameResource()Ljava/lang/String;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    const-string v1, "IFrameResource"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStaticResource()Ljava/lang/String;
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    const-string v1, "StaticResource"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStaticResourceType()Ljava/lang/String;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceXmlManager;->mResourceNode:Lorg/w3c/dom/Node;

    const-string v1, "StaticResource"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "creativeType"

    .line 52
    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method
