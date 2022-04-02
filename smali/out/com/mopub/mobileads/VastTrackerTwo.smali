.class public Lcom/mopub/mobileads/VastTrackerTwo;
.super Ljava/lang/Object;
.source "VastTrackerTwo.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastTrackerTwo$Builder;,
        Lcom/mopub/mobileads/VastTrackerTwo$MessageType;,
        Lcom/mopub/mobileads/VastTrackerTwo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastTrackerTwo$Companion;

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private final content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private final isRepeatable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_repeatable"
    .end annotation
.end field

.field private isTracked:Z

.field private final messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mopub/mobileads/VastTrackerTwo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastTrackerTwo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastTrackerTwo;->Companion:Lcom/mopub/mobileads/VastTrackerTwo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/mobileads/VastTrackerTwo$MessageType;Z)V
    .registers 5

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/VastTrackerTwo;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/VastTrackerTwo;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    iput-boolean p3, p0, Lcom/mopub/mobileads/VastTrackerTwo;->isRepeatable:Z

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/mopub/mobileads/VastTrackerTwo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageType()Lcom/mopub/mobileads/VastTrackerTwo$MessageType;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/mopub/mobileads/VastTrackerTwo;->messageType:Lcom/mopub/mobileads/VastTrackerTwo$MessageType;

    return-object v0
.end method

.method public final isRepeatable()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTrackerTwo;->isRepeatable:Z

    return v0
.end method

.method public final isTracked()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTrackerTwo;->isTracked:Z

    return v0
.end method

.method public final setTracked()V
    .registers 2

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastTrackerTwo;->isTracked:Z

    return-void
.end method
