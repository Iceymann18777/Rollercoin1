.class public final Lcom/mopub/mobileads/VastResourceTwo$Companion;
.super Ljava/lang/Object;
.source "VastResourceTwo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastResourceTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastResourceTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastResourceTwo.kt\ncom/mopub/mobileads/VastResourceTwo$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,171:1\n9204#2,9:172\n10930#2,2:181\n9213#2:183\n*E\n*S KotlinDebug\n*F\n+ 1 VastResourceTwo.kt\ncom/mopub/mobileads/VastResourceTwo$Companion\n*L\n119#1,9:172\n119#1,2:181\n119#1:183\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 93
    invoke-direct {p0}, Lcom/mopub/mobileads/VastResourceTwo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;II)Lcom/mopub/mobileads/VastResourceTwo;
    .registers 10

    const-string v0, "resourceXmlManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/mopub/mobileads/VastResourceTwo$Type;->values()[Lcom/mopub/mobileads/VastResourceTwo$Type;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 181
    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_24

    aget-object v4, v0, v3

    .line 120
    sget-object v5, Lcom/mopub/mobileads/VastResourceTwo;->Companion:Lcom/mopub/mobileads/VastResourceTwo$Companion;

    invoke-virtual {v5, p1, v4, p2, p3}, Lcom/mopub/mobileads/VastResourceTwo$Companion;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResourceTwo$Type;II)Lcom/mopub/mobileads/VastResourceTwo;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 180
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 183
    :cond_24
    check-cast v1, Ljava/util/List;

    .line 126
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/VastResourceTwo;

    return-object p1
.end method

.method public final fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResourceTwo$Type;II)Lcom/mopub/mobileads/VastResourceTwo;
    .registers 15

    const-string v0, "resourceXmlManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResourceXmlManager;->getStaticResourceType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 148
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 149
    sget-object v3, Lcom/mopub/mobileads/VastResourceTwo$CreativeType;->NONE:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    .line 151
    sget-object v4, Lcom/mopub/mobileads/VastResourceTwo$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastResourceTwo$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_32

    const/4 v0, 0x2

    if-eq v4, v0, :cond_2d

    const/4 v0, 0x3

    if-eq v4, v0, :cond_28

    :goto_25
    move-object v5, v2

    move-object v7, v3

    goto :goto_6c

    .line 161
    :cond_28
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResourceXmlManager;->getIFrameResource()Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 160
    :cond_2d
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResourceXmlManager;->getHTMLResource()Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    .line 153
    :cond_32
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResourceXmlManager;->getStaticResource()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {}, Lcom/mopub/mobileads/VastResourceTwo;->access$getVALID_IMAGE_TYPES$cp()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-static {}, Lcom/mopub/mobileads/VastResourceTwo;->access$getVALID_APPLICATION_TYPES$cp()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v5, 0x0

    :cond_50
    :goto_50
    if-eqz v5, :cond_54

    move-object v2, p1

    goto :goto_55

    :cond_54
    move-object v2, v1

    .line 156
    :goto_55
    sget-object p1, Lcom/mopub/mobileads/VastResourceTwo$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    .line 157
    invoke-static {}, Lcom/mopub/mobileads/VastResourceTwo;->access$getVALID_IMAGE_TYPES$cp()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_65

    :cond_64
    move-object p1, v1

    :goto_65
    if-eqz p1, :cond_68

    goto :goto_6a

    .line 158
    :cond_68
    sget-object p1, Lcom/mopub/mobileads/VastResourceTwo$CreativeType;->JAVASCRIPT:Lcom/mopub/mobileads/VastResourceTwo$CreativeType;

    :goto_6a
    move-object v3, p1

    goto :goto_25

    :goto_6c
    if-eqz v5, :cond_77

    .line 165
    new-instance v1, Lcom/mopub/mobileads/VastResourceTwo;

    move-object v4, v1

    move-object v6, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/mopub/mobileads/VastResourceTwo;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/VastResourceTwo$Type;Lcom/mopub/mobileads/VastResourceTwo$CreativeType;II)V

    :cond_77
    return-object v1
.end method
