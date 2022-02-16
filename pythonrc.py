"""Sourced as PYTHONSTARTUP for interactive python shells"""

from dataclasses import dataclass
from datetime import datetime, time, timedelta
from functools import partial, reduce
from ipaddress import (
    IPv4Address,
    IPv4Interface,
    IPv4Network,
    IPv6Address,
    IPv6Interface,
    IPv6Network,
    ip_address,
    ip_network,
)
from itertools import (
    accumulate,
    chain,
    combinations,
    count,
    cycle,
    groupby,
    islice,
    permutations,
    repeat,
    tee,
    zip_longest,
)
from multiprocessing.pool import ThreadPool
from pathlib import Path
from threading import Thread
from time import sleep
from typing import (
    Any,
    Callable,
    Dict,
    Generator,
    Generic,
    Iterable,
    Iterator,
    List,
    Optional,
    Set,
    TypeVar,
    Union,
)

try:
    import psutil
    import requests
    import toml
    import yaml
    from dataclasses_json import DataClassJsonMixin
except ModuleNotFoundError:
    pass

true = True
false = False
T = TypeVar("T")
U = TypeVar("U")
V = TypeVar("V")


def import_datascience_stuff():
    import numpy as np
    import pandas as pd
    import seaborn as sns
