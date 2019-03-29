.class Ljavax/activation/i;
.super Ljava/lang/Object;
.source "DSN: recipientDSN size "

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field dataHandler:Ljavax/activation/DataHandler;


# direct methods
.method public constructor <init>(Ljavax/activation/DataHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;

    iput-object p1, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;

    return-void
.end method


# virtual methods
