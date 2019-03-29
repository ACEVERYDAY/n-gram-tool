.class Ljavax/activation/g;
.super Ljava/lang/Object;
.source "DSN: got messageDSN"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Ljavax/activation/DataHandler;

.field private final synthetic val$fdch:Ljavax/activation/DataContentHandler;

.field private final synthetic val$pos:Ljava/io/PipedOutputStream;


# direct methods
.method constructor <init>(Ljavax/activation/DataHandler;Ljava/io/PipedOutputStream;Ljavax/activation/DataContentHandler;)V
    .locals 0

    iput-object p1, p0, Ljavax/activation/DataHandler$1;->this$0:Ljavax/activation/DataHandler;

    iput-object p2, p0, Ljavax/activation/DataHandler$1;->val$pos:Ljava/io/PipedOutputStream;

    iput-object p3, p0, Ljavax/activation/DataHandler$1;->val$fdch:Ljavax/activation/DataContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
