.class final synthetic Lcom/google/firebase/iid/Registrar$$Lambda$0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final $instance:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/iid/Registrar$$Lambda$0;

    invoke-direct {v0}, Lcom/google/firebase/iid/Registrar$$Lambda$0;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/Registrar$$Lambda$0;->$instance:Lcom/google/firebase/components/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/iid/Registrar;->lambda$getComponents$0$Registrar(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    return-object p1
.end method
