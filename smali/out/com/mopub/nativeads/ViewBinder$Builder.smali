.class public final Lcom/mopub/nativeads/ViewBinder$Builder;
.super Ljava/lang/Object;
.source "ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/ViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private callToActionId:I

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private iconImageId:I

.field private final layoutId:I

.field private mainImageId:I

.field private privacyInformationIconImageId:I

.field private sponsoredTextId:I

.field private textId:I

.field private titleId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    .line 27
    iput p1, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->layoutId:I

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/ViewBinder$Builder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->layoutId:I

    return p0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/ViewBinder$Builder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId:I

    return p0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/ViewBinder$Builder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->textId:I

    return p0
.end method

.method static synthetic access$400(Lcom/mopub/nativeads/ViewBinder$Builder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->callToActionId:I

    return p0
.end method

.method static synthetic access$500(Lcom/mopub/nativeads/ViewBinder$Builder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->mainImageId:I

    return p0
.end method

.method static synthetic access$600(Lcom/mopub/nativeads/ViewBinder$Builder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->iconImageId:I

    return p0
.end method

.method static synthetic access$700(Lcom/mopub/nativeads/ViewBinder$Builder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->privacyInformationIconImageId:I

    return p0
.end method

.method static synthetic access$800(Lcom/mopub/nativeads/ViewBinder$Builder;)I
    .registers 1

    .line 14
    iget p0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->sponsoredTextId:I

    return p0
.end method

.method static synthetic access$900(Lcom/mopub/nativeads/ViewBinder$Builder;)Ljava/util/Map;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;I)Lcom/mopub/nativeads/ViewBinder$Builder;
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addExtras(Ljava/util/Map;)Lcom/mopub/nativeads/ViewBinder$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/mopub/nativeads/ViewBinder$Builder;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public final build()Lcom/mopub/nativeads/ViewBinder;
    .registers 3

    .line 87
    new-instance v0, Lcom/mopub/nativeads/ViewBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/nativeads/ViewBinder;-><init>(Lcom/mopub/nativeads/ViewBinder$Builder;Lcom/mopub/nativeads/ViewBinder$1;)V

    return-object v0
.end method

.method public final callToActionId(I)Lcom/mopub/nativeads/ViewBinder$Builder;
    .registers 2

    .line 45
    iput p1, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->callToActionId:I

    return-object p0
.end method

.method public final iconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;
    .registers 2

    .line 57
    iput p1, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->iconImageId:I

    return-object p0
.end method

.method public final mainImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;
    .registers 2

    .line 51
    iput p1, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->mainImageId:I

    return-object p0
.end method

.method public final privacyInformationIconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;
    .registers 2

    .line 63
    iput p1, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->privacyInformationIconImageId:I

    return-object p0
.end method

.method public final sponsoredTextId(I)Lcom/mopub/nativeads/ViewBinder$Builder;
    .registers 2

    .line 69
    iput p1, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->sponsoredTextId:I

    return-object p0
.end method

.method public final textId(I)Lcom/mopub/nativeads/ViewBinder$Builder;
    .registers 2

    .line 39
    iput p1, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->textId:I

    return-object p0
.end method

.method public final titleId(I)Lcom/mopub/nativeads/ViewBinder$Builder;
    .registers 2

    .line 33
    iput p1, p0, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId:I

    return-object p0
.end method
