.class final synthetic Lcom/google/firebase/messaging/FirebaseMessagingService$$Lambda$0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@20.2.4"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# static fields
.field static final $instance:Lcom/google/android/datatransport/Transformer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/messaging/FirebaseMessagingService$$Lambda$0;

    invoke-direct {v0}, Lcom/google/firebase/messaging/FirebaseMessagingService$$Lambda$0;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService$$Lambda$0;->$instance:Lcom/google/android/datatransport/Transformer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method
