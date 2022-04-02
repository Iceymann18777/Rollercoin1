.class Lcom/mopub/mobileads/VastResource;
.super Ljava/lang/Object;
.source "VastResource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastResource$CreativeType;,
        Lcom/mopub/mobileads/VastResource$Type;
    }
.end annotation


# static fields
.field private static final VALID_APPLICATION_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_IMAGE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private mCreativeType:Lcom/mopub/mobileads/VastResource$CreativeType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creative_type"
    .end annotation
.end field

.field private mHeight:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private mResource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource"
    .end annotation
.end field

.field private mType:Lcom/mopub/mobileads/VastResource$Type;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "image/jpeg"

    const-string v1, "image/png"

    const-string v2, "image/bmp"

    const-string v3, "image/gif"

    .line 25
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastResource;->VALID_IMAGE_TYPES:Ljava/util/List;

    const-string v0, "application/x-javascript"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastResource;->VALID_APPLICATION_TYPES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastResource$CreativeType;II)V
    .registers 6

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 137
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 139
    iput-object p1, p0, Lcom/mopub/mobileads/VastResource;->mResource:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/mopub/mobileads/VastResource;->mType:Lcom/mopub/mobileads/VastResource$Type;

    .line 141
    iput-object p3, p0, Lcom/mopub/mobileads/VastResource;->mCreativeType:Lcom/mopub/mobileads/VastResource$CreativeType;

    .line 142
    iput p4, p0, Lcom/mopub/mobileads/VastResource;->mWidth:I

    .line 143
    iput p5, p0, Lcom/mopub/mobileads/VastResource;->mHeight:I

    return-void
.end method

.method static fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;II)Lcom/mopub/mobileads/VastResource;
    .registers 7

    .line 72
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 74
    invoke-static {p0, v3, p1, p2}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v3

    if-eqz v3, :cond_11

    return-object v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method static fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;
    .registers 11

    .line 96
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getIFrameResource()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getHTMLResource()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getStaticResource()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceXmlManager;->getStaticResourceType()Ljava/lang/String;

    move-result-object p0

    .line 107
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne p1, v3, :cond_3d

    if-eqz v2, :cond_3d

    if-eqz p0, :cond_3d

    sget-object v3, Lcom/mopub/mobileads/VastResource;->VALID_IMAGE_TYPES:Ljava/util/List;

    .line 109
    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    sget-object v3, Lcom/mopub/mobileads/VastResource;->VALID_APPLICATION_TYPES:Ljava/util/List;

    .line 110
    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 112
    :cond_2e
    sget-object v0, Lcom/mopub/mobileads/VastResource;->VALID_IMAGE_TYPES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 113
    sget-object p0, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    goto :goto_3b

    .line 115
    :cond_39
    sget-object p0, Lcom/mopub/mobileads/VastResource$CreativeType;->JAVASCRIPT:Lcom/mopub/mobileads/VastResource$CreativeType;

    :goto_3b
    move-object v4, p0

    goto :goto_52

    .line 117
    :cond_3d
    sget-object p0, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne p1, p0, :cond_48

    if-eqz v1, :cond_48

    .line 119
    sget-object p0, Lcom/mopub/mobileads/VastResource$CreativeType;->NONE:Lcom/mopub/mobileads/VastResource$CreativeType;

    move-object v4, p0

    move-object v2, v1

    goto :goto_52

    .line 120
    :cond_48
    sget-object p0, Lcom/mopub/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne p1, p0, :cond_5c

    if-eqz v0, :cond_5c

    .line 122
    sget-object p0, Lcom/mopub/mobileads/VastResource$CreativeType;->NONE:Lcom/mopub/mobileads/VastResource$CreativeType;

    move-object v4, p0

    move-object v2, v0

    .line 127
    :goto_52
    new-instance p0, Lcom/mopub/mobileads/VastResource;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/VastResource;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastResource$CreativeType;II)V

    return-object p0

    :cond_5c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 207
    sget-object v0, Lcom/mopub/mobileads/VastResource$1;->$SwitchMap$com$mopub$mobileads$VastResource$Type:[I

    iget-object v1, p0, Lcom/mopub/mobileads/VastResource;->mType:Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_16

    const/4 p1, 0x2

    if-eq v0, p1, :cond_15

    const/4 p1, 0x3

    if-eq v0, p1, :cond_15

    return-object v2

    :cond_15
    return-object p2

    .line 209
    :cond_16
    sget-object v0, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    iget-object v1, p0, Lcom/mopub/mobileads/VastResource;->mCreativeType:Lcom/mopub/mobileads/VastResource$CreativeType;

    if-ne v0, v1, :cond_1d

    return-object p1

    .line 211
    :cond_1d
    sget-object p1, Lcom/mopub/mobileads/VastResource$CreativeType;->JAVASCRIPT:Lcom/mopub/mobileads/VastResource$CreativeType;

    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mCreativeType:Lcom/mopub/mobileads/VastResource$CreativeType;

    if-ne p1, v0, :cond_24

    return-object p2

    :cond_24
    return-object v2
.end method

.method public getCreativeType()Lcom/mopub/mobileads/VastResource$CreativeType;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mCreativeType:Lcom/mopub/mobileads/VastResource$CreativeType;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mResource:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/mopub/mobileads/VastResource$Type;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mType:Lcom/mopub/mobileads/VastResource$Type;

    return-object v0
.end method

.method public initializeWebView(Lcom/mopub/mobileads/VastWebView;)V
    .registers 4

    .line 167
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mType:Lcom/mopub/mobileads/VastResource$Type;

    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne v0, v1, :cond_39

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/VastResource;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" height=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/VastResource;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VastResource;->mResource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"></iframe>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastWebView;->loadData(Ljava/lang/String;)V

    goto :goto_8e

    .line 173
    :cond_39
    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mType:Lcom/mopub/mobileads/VastResource$Type;

    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne v0, v1, :cond_45

    .line 174
    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mResource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastWebView;->loadData(Ljava/lang/String;)V

    goto :goto_8e

    .line 175
    :cond_45
    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mType:Lcom/mopub/mobileads/VastResource$Type;

    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne v0, v1, :cond_8e

    .line 176
    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mCreativeType:Lcom/mopub/mobileads/VastResource$CreativeType;

    sget-object v1, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    if-ne v0, v1, :cond_6d

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head></head><body style=\"margin:0;padding:0\"><img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VastResource;->mResource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastWebView;->loadData(Ljava/lang/String;)V

    goto :goto_8e

    .line 187
    :cond_6d
    iget-object v0, p0, Lcom/mopub/mobileads/VastResource;->mCreativeType:Lcom/mopub/mobileads/VastResource$CreativeType;

    sget-object v1, Lcom/mopub/mobileads/VastResource$CreativeType;->JAVASCRIPT:Lcom/mopub/mobileads/VastResource$CreativeType;

    if-ne v0, v1, :cond_8e

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VastResource;->mResource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastWebView;->loadData(Ljava/lang/String;)V

    :cond_8e
    :goto_8e
    return-void
.end method
