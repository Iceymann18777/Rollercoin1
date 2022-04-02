.class Lcom/mopub/mobileads/VastMediaXmlManager;
.super Ljava/lang/Object;
.source "VastMediaXmlManager.java"


# static fields
.field private static final BITRATE:Ljava/lang/String; = "bitrate"

.field private static final BITRATE_MAX:Ljava/lang/String; = "maxBitrate"

.field private static final BITRATE_MIN:Ljava/lang/String; = "minBitrate"

.field private static final DELIVERY:Ljava/lang/String; = "delivery"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "type"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private final mMediaNode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mediaNode cannot be null"

    .line 32
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/mopub/mobileads/VastMediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method getBitrate()Ljava/lang/Integer;
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/VastMediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "bitrate"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 106
    :cond_b
    iget-object v0, p0, Lcom/mopub/mobileads/VastMediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "minBitrate"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/mopub/mobileads/VastMediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v2, "maxBitrate"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2f
    if-eqz v0, :cond_32

    return-object v0

    :cond_32
    return-object v1
.end method

.method getDelivery()Ljava/lang/String;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/VastMediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "delivery"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHeight()Ljava/lang/Integer;
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/VastMediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getMediaUrl()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/VastMediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getType()Ljava/lang/String;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/VastMediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWidth()Ljava/lang/Integer;
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/VastMediaXmlManager;->mMediaNode:Lorg/w3c/dom/Node;

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValueAsInt(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
