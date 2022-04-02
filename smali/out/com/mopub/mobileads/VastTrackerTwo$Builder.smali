.class public final Lcom/mopub/mobileads/VastTrackerTwo$Builder;
.super Ljava/lang/Object;
.source "VastTrackerTwo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastTrackerTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVastTrackerTwo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastTrackerTwo.kt\ncom/mopub/mobileads/VastTrackerTwo$Builder\n*L\n1#1,42:1\n*E\n"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;

.field private isRepeatable:Z

.field private messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->content:Ljava/lang/String;

    .line 18
    sget-object p1, Lcom/mopub/mobileads/VastTrackerTwo$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    iput-object p1, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    return-void
.end method

.method private final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->content:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/mopub/mobileads/VastTrackerTwo$Builder;Ljava/lang/String;ILjava/lang/Object;)Lcom/mopub/mobileads/VastTrackerTwo$Builder;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->content:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->copy(Ljava/lang/String;)Lcom/mopub/mobileads/VastTrackerTwo$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/mopub/mobileads/VastTrackerTwo;
    .registers 5

    .line 23
    new-instance v0, Lcom/mopub/mobileads/VastTrackerTwo;

    iget-object v1, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->content:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    iget-boolean v3, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->isRepeatable:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/VastTrackerTwo;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/mopub/mobileads/VastTrackerTwo$Builder;
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/VastTrackerTwo$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lcom/mopub/mobileads/VastTrackerTwo$Builder;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/mopub/mobileads/VastTrackerTwo$Builder;

    iget-object v0, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->content:Ljava/lang/String;

    iget-object p1, p1, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->content:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->content:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final isRepeatable(Z)Lcom/mopub/mobileads/VastTrackerTwo$Builder;
    .registers 3

    .line 22
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;

    iput-boolean p1, v0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->isRepeatable:Z

    return-object v0
.end method

.method public final messageType(Lcom/mopub/mobileads/VastTrackerTwo$MessageType;)Lcom/mopub/mobileads/VastTrackerTwo$Builder;
    .registers 3

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Builder(content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VastTrackerTwo$Builder;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
