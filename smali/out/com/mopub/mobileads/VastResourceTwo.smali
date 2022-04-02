.class public Lcom/mopub/mobileads/VastResourceTwo;
.super Ljava/lang/Object;
.source "VastResourceTwo.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastResourceTwo$Type;,
        Lcom/mopub/mobileads/VastResourceTwo$CreativeType;,
        Lcom/mopub/mobileads/VastResourceTwo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastResourceTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastResourceTwo.kt\ncom/mopub/mobileads/VastResourceTwo\n*L\n1#1,171:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastResourceTwo$Companion;

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

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final creativeType:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creative_type"
    .end annotation
.end field

.field private final height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private final resource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource"
    .end annotation
.end field

.field private final type:Lcom/mopub/mobileads/VastResourceTwo$Type;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private final width:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/mopub/mobileads/VastResourceTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastResourceTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastResourceTwo;->Companion:Lcom/mopub/mobileads/VastResourceTwo$Companion;

    const-string v0, "image/jpeg"

    const-string v1, "image/png"

    const-string v2, "image/bmp"

    const-string v3, "image/gif"

    .line 97
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastResourceTwo;->VALID_IMAGE_TYPES:Ljava/util/List;

    const-string v0, "application/x-javascript"

    .line 100
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastResourceTwo;->VALID_APPLICATION_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/mobileads/VastResourceTwo$Type;Lcom/mopub/mobileads/VastResourceTwo$CreativeType;II)V
    .registers 7

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creativeType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/VastResourceTwo;->resource:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/VastResourceTwo;->type:Lcom/mopub/mobileads/VastResourceTwo$Type;

    iput-object p3, p0, Lcom/mopub/mobileads/VastResourceTwo;->creativeType:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    iput p4, p0, Lcom/mopub/mobileads/VastResourceTwo;->width:I

    iput p5, p0, Lcom/mopub/mobileads/VastResourceTwo;->height:I

    return-void
.end method

.method public static final synthetic access$getVALID_APPLICATION_TYPES$cp()Ljava/util/List;
    .registers 1

    .line 13
    sget-object v0, Lcom/mopub/mobileads/VastResourceTwo;->VALID_APPLICATION_TYPES:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getVALID_IMAGE_TYPES$cp()Ljava/util/List;
    .registers 1

    .line 13
    sget-object v0, Lcom/mopub/mobileads/VastResourceTwo;->VALID_IMAGE_TYPES:Ljava/util/List;

    return-object v0
.end method

.method public static final fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;II)Lcom/mopub/mobileads/VastResourceTwo;
    .registers 4

    sget-object v0, Lcom/mopub/mobileads/VastResourceTwo;->Companion:Lcom/mopub/mobileads/VastResourceTwo$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mopub/mobileads/VastResourceTwo$Companion;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;II)Lcom/mopub/mobileads/VastResourceTwo;

    move-result-object p0

    return-object p0
.end method

.method public static final fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResourceTwo$Type;II)Lcom/mopub/mobileads/VastResourceTwo;
    .registers 5

    sget-object v0, Lcom/mopub/mobileads/VastResourceTwo;->Companion:Lcom/mopub/mobileads/VastResourceTwo$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mopub/mobileads/VastResourceTwo$Companion;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResourceTwo$Type;II)Lcom/mopub/mobileads/VastResourceTwo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 86
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getType()Lcom/mopub/mobileads/VastResourceTwo$Type;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    if-eq v0, v1, :cond_35

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getType()Lcom/mopub/mobileads/VastResourceTwo$Type;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    if-ne v0, v1, :cond_11

    goto :goto_35

    .line 87
    :cond_11
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getType()Lcom/mopub/mobileads/VastResourceTwo$Type;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getCreativeType()Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    if-ne v0, v1, :cond_22

    goto :goto_36

    .line 88
    :cond_22
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getType()Lcom/mopub/mobileads/VastResourceTwo$Type;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/VastResourceTwo$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    if-ne p1, v0, :cond_33

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getCreativeType()Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    move-result-object p1

    sget-object v0, Lcom/mopub/mobileads/VastResourceTwo$CreativeType;->JAVASCRIPT:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    if-ne p1, v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    move-object p1, p2

    :goto_36
    return-object p1
.end method

.method public getCreativeType()Lcom/mopub/mobileads/VastResourceTwo$CreativeType;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceTwo;->creativeType:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/mopub/mobileads/VastResourceTwo;->height:I

    return v0
.end method

.method public getResource()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceTwo;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/mopub/mobileads/VastResourceTwo$Type;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/mopub/mobileads/VastResourceTwo;->type:Lcom/mopub/mobileads/VastResourceTwo$Type;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/mopub/mobileads/VastResourceTwo;->width:I

    return v0
.end method

.method public initializeWebView(Lcom/mopub/mobileads/VastWebView;)V
    .registers 5

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getType()Lcom/mopub/mobileads/VastResourceTwo$Type;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getResource()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_bf

    .line 53
    :cond_13
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getType()Lcom/mopub/mobileads/VastResourceTwo$Type;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    const/16 v2, 0x22

    if-ne v0, v1, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " width=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " height=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"></iframe>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bf

    .line 58
    :cond_5b
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getType()Lcom/mopub/mobileads/VastResourceTwo$Type;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    if-ne v0, v1, :cond_93

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getCreativeType()Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    if-ne v0, v1, :cond_93

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<head></head><body style=\"margin:0;padding:0\"><img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " width=\"100%\" style=\"max-width:100%;max-height:100%;\" />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bf

    .line 62
    :cond_93
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getType()Lcom/mopub/mobileads/VastResourceTwo$Type;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResourceTwo$Type;

    if-ne v0, v1, :cond_be

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getCreativeType()Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResourceTwo$CreativeType;->JAVASCRIPT:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    if-ne v0, v1, :cond_be

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastResourceTwo;->getResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_bf

    :cond_be
    const/4 v0, 0x0

    :goto_bf
    if-eqz v0, :cond_c4

    .line 66
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastWebView;->loadData(Ljava/lang/String;)V

    :cond_c4
    return-void
.end method
