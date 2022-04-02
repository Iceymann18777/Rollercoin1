.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$5UFexKQkRNqmel8DaRJEnD1bDjg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/BasePlayer$ListenerInvocation;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$5UFexKQkRNqmel8DaRJEnD1bDjg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$5UFexKQkRNqmel8DaRJEnD1bDjg;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$5UFexKQkRNqmel8DaRJEnD1bDjg;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$5UFexKQkRNqmel8DaRJEnD1bDjg;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$5UFexKQkRNqmel8DaRJEnD1bDjg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invokeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .registers 2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player$EventListener;->onSeekProcessed()V

    return-void
.end method
